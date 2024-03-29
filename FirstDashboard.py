import os
from flask import Flask, render_template,request
import plotly
import plotly.plotly as py
import plotly.graph_objs as go
import plotly.figure_factory as ff
from sqlalchemy import create_engine
from flask_sqlalchemy import SQLAlchemy
# from flask_heroku import Heroku

import pandas as pd
import numpy as np
import json

app = Flask(__name__)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres://dxlnpgnglkqmcd:fc7936ceac1b223314ee24e8c37ecf0b0ecc5008b91942e1375875401539afc2@ec2-174-129-29-101.compute-1.amazonaws.com:5432/d9uoq5736ev151'
# heroku = Heroku(app)
# db = SQLAlchemy(app)

connection = create_engine('postgres://dxlnpgnglkqmcd:fc7936ceac1b223314ee24e8c37ecf0b0ecc5008b91942e1375875401539afc2@ec2-174-129-29-101.compute-1.amazonaws.com:5432/d9uoq5736ev151', echo=True)
revenue = pd.read_sql_table('Bundessteuern', connection).sort_values(by='index')
revenue['Date'] = pd.to_datetime(revenue['Date'])
expense = pd.read_sql_table('Ausgaben', connection).sort_values(by='index')
revenue_budget = pd.read_sql_table('Revenue Budget', connection).sort_values(by='index')
current_year = 2019

#index tables
def cy_estimate_table(year):
    cy_estimate = revenue[(revenue['Year'] == year) & (revenue['Month'] == 12)]['Rolling Total'].sum().astype(int)
    cy_budget_total = revenue_budget[revenue_budget['Year'] == year]['Budget'].sum().astype(int)
    py_actual = revenue[(revenue['Year'] == year-1) & (revenue['Month'] == 12)]['Rolling Total'].sum().astype(int)
    cy_estimate_table = pd.DataFrame()
    cy_estimate_table['Current Year Estimates'] = ['Budgeted Revenue', 'Estimated Revenue', 'Variance from Budget (in %)', 'Change from Prior Year (in %)']
    cy_estimate_table['Estimates (in million €)'] = [cy_budget_total, cy_estimate, round(((cy_estimate/cy_budget_total)-1), 4)*100, round(((cy_estimate/py_actual) - 1), 4)*100]
    colorscale = [[0, '#000080'],[.5, '#c9c9ff'],[1, '#ffffff']]
    data = ff.create_table(cy_estimate_table, colorscale=colorscale, height_constant=25)
    data.layout.width = 800
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def ny_table(year):
    ny_estimate = revenue[(revenue['Year'] == year) & (revenue['Month'] == 12)]['Rolling Total'].sum().astype(int)
    cy_revenue_budget_total = revenue_budget[revenue_budget['Year'] == year-1]['Budget'].sum().astype(int)
    cy_expense_budget_total = expense[(expense['Year'] == year-1) & (expense['Month'] == 1)]['Budget'].sum().astype(int)
    ny_table = pd.DataFrame()
    ny_table['Proposed Next Year Budget'] = ['Proposed Revenue', 'Change from Current Budget (in %)', 'Proposed Expenses', 'Change from Current Budget (in %)', 'Proposed Balance']
    ny_table['Estimates (in million €)'] = [ny_estimate, round(((ny_estimate/cy_revenue_budget_total)-1), 4)*100, int(ny_estimate), 100*round(((ny_estimate/cy_expense_budget_total)-1), 4), ny_estimate-(int(ny_estimate))]
    colorscale = [[0, '#000080'],[.5, '#c9c9ff'],[1, '#ffffff']]
    data = ff.create_table(ny_table, colorscale=colorscale, height_constant=25)
    data.layout.width = 800
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def py_table(year):
    revenue_total = revenue[(revenue['Year'] == int(year)) & (revenue['Month'] == 12)]['Rolling Total'].sum().astype(int)
    revenue_total_ly = revenue[(revenue['Year'] == int(year)-1) & (revenue['Month'] == 12)]['Rolling Total'].sum().astype(int)
    expense_total = expense[(expense['Year'] == int(year)) & (expense['Month'] == 12)]['Current Year Total'].sum().astype(int)
    expense_total_ly = expense[(expense['Year'] == int(year)-1) & (expense['Month'] == 12)]['Current Year Total'].sum().astype(int)
    cy_revenue_budget = revenue_budget[revenue_budget['Year'] == int(year)]['Budget'].sum().astype(int)
    cy_expense_budget = expense[(expense['Year'] == int(year)) & (expense['Month'] == 12)]['Budget'].sum().astype(int)
    py_table = pd.DataFrame()
    py_table['Prior Year Results'] = ['Actual Revenue', 'Budgeted Revenue', 'Variance from Budget (in %)', 'Change from Prior Year (in %)', '',
                                                    'Actual Expenses', 'Budgeted Expenses', 'Variance from Budget (in %)', 'Change from Prior Year (in %)', '',
                                                    'Actual Balance', 'Budgeted Balance']
    py_table['Results (in million €)'] = [revenue_total, cy_revenue_budget, round((revenue_total/cy_revenue_budget)-1, 4)*100, round((revenue_total/revenue_total_ly)-1, 4)*100, '',
                                            expense_total, cy_expense_budget, round((expense_total/cy_expense_budget)-1, 4)*100, round((expense_total/expense_total_ly)-1, 4)*100, '',
                                            revenue_total-expense_total, cy_revenue_budget-cy_expense_budget]
    colorscale = [[0, '#000080'],[.5, '#c9c9ff'],[1, '#ffffff']]
    data = ff.create_table(py_table, colorscale=colorscale, height_constant=15)
    data.layout.width = 800
    table = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)

    #line graph for annual summary
    categories = expense[expense['Year'] <= int(year)]['Year'].unique()
    bar_revenues = revenue[revenue['Year'] <= int(year)].groupby(['Year'])['Monthly Total'].sum()
    bar_expenses = expense[(expense['Year'] <= int(year)) & (expense['Month'] == 12)].groupby(['Year'])['Current Year Total'].sum()

    trace1 = go.Scatter(x=categories, y=bar_revenues, marker=dict(color='#228b22'), name = 'Revenues')
    trace2 = go.Scatter(x=categories, y=bar_expenses, marker=dict(color='#800000'), name = 'Expenses')
    data = [trace1, trace2]
    layout = go.Layout(title='Revenues and Expenses over Time',
                                    titlefont=dict(family='Avenir Book', size = 24, color = '#000000'),
                                    xaxis = dict(title='Year', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')),
                                    yaxis = dict(title='Total (in million €)', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')))
    fig = go.Figure(data=data, layout=layout)
    bar_graph = json.dumps(fig, cls=plotly.utils.PlotlyJSONEncoder)



    return table, bar_graph

def py_table_revenues(year):
    py_revenue_table = revenue[(revenue['Year'] == int(year)) & (revenue['Month'] == 12)][['category_en', 'Current Year Total']]
    other_table = revenue_budget[revenue_budget['Year'] == int(year)]
    py_revenue_table = pd.merge(py_revenue_table, other_table, how = 'left', on = 'category_en')
    py_revenue_table = py_revenue_table[['category_en', 'Budget', 'Current Year Total']]
    py_revenue_table.columns = ['Revenue Source', 'Budget', 'Year End Total']
    py_revenue_table['Variance (in %)'] = (((py_revenue_table['Year End Total']/py_revenue_table['Budget'])-1)*100).round(1)
    py_revenue_table = py_revenue_table[['Revenue Source', 'Budget', 'Year End Total', 'Variance (in %)']]
    colorscale = [[0, '#228b22'],[.5, '#c9ffc9'],[1, '#ffffff']]
    data = ff.create_table(py_revenue_table, colorscale=colorscale, height_constant=15)
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def py_table_expenses(year):
    py_expense_table = expense[(expense['Year'] == int(year)) & (expense['Month'] == 12)][['category_en', 'Budget', 'Current Year Total']]
    py_expense_table.columns = ['Expense Category', 'Budget', 'Year End Total']
    py_expense_table['Variance (in %)'] = (((py_expense_table['Year End Total']/py_expense_table['Budget'])-1)*100).round(1)
    colorscale = [[0, '#800000'],[.5, '#f08080'],[1, '#ffffff']]
    data = ff.create_table(py_expense_table, colorscale=colorscale, height_constant=15)
    # data.layout.width = 1750
    # table.layout.width=1500 #width in pixels
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def tax_detail_info(category):
    #summary info comparing prior year actual, current year estimate, and next year proposed budget
    cy_summary = pd.DataFrame()
    #define the data
    ny_estimate = int(list(revenue[(revenue['category_en'] == category) & (revenue['Month'] == 12)]['Rolling Total'])[-1])
    cy_estimate = int(list(revenue[(revenue['category_en'] == category) & (revenue['Month'] == 12)]['Rolling Total'])[-2])
    py_actual = int(list(revenue[(revenue['category_en'] == category) & (revenue['Month'] == 12)]['Rolling Total'])[-3])
    py2_actual = int(list(revenue[(revenue['category_en'] == category) & (revenue['Month'] == 12)]['Rolling Total'])[-4])
    #create the columns in the dataframe
    cy_summary['Information'] = [f'Proposed {current_year+1} Budget for {category}', f'{current_year} Estimate for {category}', f'{current_year-1} Actual Amount']
    cy_summary['Estimates (in million €)'] = [ny_estimate, cy_estimate, py_actual]
    cy_summary['Change from Prior Year (in %)'] = [(((ny_estimate/cy_estimate)-1)*100), (((cy_estimate/py_actual)-1)*100), (((py_actual/py2_actual)-1)*100)]
    cy_summary['Change from Prior Year (in %)'] = cy_summary['Change from Prior Year (in %)'].round(2)

    colorscale = [[0, '#000080'],[.5, '#c9c9ff'],[1, '#ffffff']]
    summary_data = ff.create_table(cy_summary, colorscale=colorscale, height_constant=15)
    summary_data.layout.width = 800

    cy_revenues = revenue[(revenue['category_en'] == category) & (revenue['Year'] == 2018)]['Monthly Total']
    ly_revenues= revenue[(revenue['category_en'] == category) & (revenue['Year'] == 2017)]['Monthly Total']
    ly2_revenues = revenue[(revenue['category_en'] == category) & (revenue['Year'] == 2016)]['Monthly Total']

    months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    trace1 = go.Bar(x=months, y=ly2_revenues, marker=dict(color='#31ca31', line=dict(color='#000000', width=0.5)), name = '2016')
    trace2 = go.Bar(x=months, y=ly_revenues, marker=dict(color='#2aab2a', line=dict(color='#000000', width=0.5)), name = '2017')
    trace3 = go.Bar(x=months, y=cy_revenues, marker=dict(color='#228b22', line=dict(color='#000000', width=0.5)), name = '2018')
    collection_data = [trace1, trace2, trace3]
    collection_layout = go.Layout(titlefont=dict(family='Avenir Book', size = 24, color = '#000000'),
                                    xaxis = dict(title='Month', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')),
                                    yaxis = dict(title='Revenue (in million €)', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')))
    collection_fig = go.Figure(data=collection_data, layout=collection_layout)
    #line chart of the tax selected
    revenue_category = revenue[(revenue['category_en'] == category) & (revenue['Year'] <= 2018) & (revenue['Month'] == 12)]
    x = revenue[revenue['Year'] <= 2018]['Date'].unique()
    y = revenue[(revenue['category_en'] == category) & (revenue['Year'] <= 2018)]['Rolling Total'].round(0)
    df = pd.DataFrame({'Tax Year': x, 'Month End Result': y}) # creating a sample dataframe
    ### create two traces, one for historical, one for projection ###
    line_data = [go.Scatter(x=df['Tax Year'], y=df['Month End Result'], marker=dict(color='#228b22'), name = category)]
    line_layout = go.Layout(title = 'Monthly Total Over Time',
                            titlefont = dict(family='Avenir Book', size = 24, color = '#000000'),
                            xaxis = dict(title='Date', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')),
                            yaxis = dict(title='Revenue (in million €)', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')))
    line_fig = go.Figure(data=line_data, layout=line_layout)
    #bar chart of the percentage change
    years = revenue_category['Year'].unique()
    pct_change = revenue_category[(revenue_category['category_en'] == category) & (revenue_category['Month'] == 12)].groupby('Year')['Rolling Total'].pct_change().fillna(0)
    bar_change_data = [go.Bar(x=years, y=pct_change.apply(lambda x: '{:.2%}'.format(x)).values, marker=dict(color=['#228b22' if (list(pct_change)[i] >= 0) else '#800000' for i in range(len(years))], line=dict(color='#000000', width=0.5)), name = category)]
    bar_change_layout = go.Layout(title = 'Annual Percentage Change',
                   titlefont = dict(family='Avenir Book',
                                   size = 24,
                                   color='#000000'),
                  xaxis=dict(title="Year",
                             titlefont=dict(family='Avenir Book',
                                            size=14,
                                            color='#000000'),
                            tickfont=dict(size=14,color='#000000')),
                  yaxis=dict(title='Percentage Change in Revenue',
                             titlefont=dict(family='Avenir Book',
                                            size=14,
                                            color='#000000'),
                             tickfont=dict(size=14,color='#000000'),
                             ))
    bar_change_fig = go.Figure(data=bar_change_data, layout=bar_change_layout)
    # bar_change_layout = dict(title = 'Average High and Low Temperatures in New York')
    #table showing annual data
    tax_table = revenue_category[(revenue_category['category_en'] == category)][['Year', 'Current Year Total']].astype(int)
    tax_table['Budget'] = list(revenue_budget[(revenue_budget['category_en'] == category) & (revenue_budget['Year'] <= 2018)]['Budget'])
    tax_table['Variance (in %)'] = (((tax_table['Current Year Total']/tax_table['Budget'])-1)*100).round(1)
    colorscale = [[0, '#228b22'],[.5, '#c9ffc9'],[1, '#ffffff']]
    data = ff.create_table(tax_table, colorscale=colorscale, height_constant=15)

    line_chart = json.dumps(line_fig, cls=plotly.utils.PlotlyJSONEncoder)
    bar_change = json.dumps(bar_change_fig, cls=plotly.utils.PlotlyJSONEncoder)
    tax_source_table = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    summary_table = json.dumps(summary_data, cls=plotly.utils.PlotlyJSONEncoder)
    collections_bar = json.dumps(collection_fig, cls=plotly.utils.PlotlyJSONEncoder)
    return line_chart, bar_change, tax_source_table, summary_table, collections_bar

def expense_detail_info(category):
    cy_expenses = expense[(expense['category_en'] == category) & (expense['Year'] == 2019)]['Monthly Total']
    ly_expenses = expense[(expense['category_en'] == category) & (expense['Year'] == 2018)]['Monthly Total']
    ly2_expenses = expense[(expense['category_en'] == category) & (expense['Year'] == 2017)]['Monthly Total']

    months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    trace1 = go.Bar(x=months, y=ly2_expenses, marker=dict(color='#ffbbbb', line=dict(color='#000000', width=0.5)), name = '2017')
    trace2 = go.Bar(x=months, y=ly_expenses, marker=dict(color='#bb0000', line=dict(color='#000000', width=0.5)), name = '2018')
    trace3 = go.Bar(x=months, y=cy_expenses, marker=dict(color='#800000', line=dict(color='#000000', width=0.5)), name = '2019')
    collection_data = [trace1, trace2, trace3]
    collection_layout = go.Layout(titlefont=dict(family='Avenir Book', size = 24, color = '#000000'),
                                    xaxis = dict(title='Month', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')),
                                    yaxis = dict(title='Expenses (in million €)', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')))
    collection_fig = go.Figure(data=collection_data, layout=collection_layout)

    #line chart of the tax selected
    expense_category = expense[(expense['category_en'] == category) & (expense['Year'] <= 2018) & (expense['Month'] == 12)]
    x = expense[expense['Year'] <= 2018]['Date'].unique()
    y = expense[(expense['category_en'] == category) & (expense['Year'] <= 2018)]['Monthly Total'].rolling(12).sum()
    df = pd.DataFrame({'Tax Year': x, 'Month End Result': y}) # creating a sample dataframe
    line_data = [go.Scatter(x=df['Tax Year'], y=df['Month End Result'], marker=dict(color='#800000'), name = category)]
    line_layout = go.Layout(title = 'Monthly Total Over Time',
                            titlefont = dict(family='Avenir Book', size = 24, color = '#000000'),
                            xaxis = dict(title='Date', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')),
                            yaxis = dict(title='Expenses (in million €)', titlefont=dict(family='Avenir Book', size=14, color = '#000000'), tickfont=dict(size=14, color='#000000')))
    line_fig = go.Figure(data=line_data, layout=line_layout)
    #bar chart of the percentage change
    years = expense_category['Year'].unique()
    pct_change = expense_category[(expense_category['category_en'] == category) & (expense_category['Month'] == 12)].groupby('Year')['Current Year Total'].pct_change().fillna(0)
    bar_change_data = [go.Bar(x=years, y=pct_change.apply(lambda x: '{:.2%}'.format(x)).values, marker=dict(color=['#800000' if (list(pct_change)[i] >= 0) else '#228b22' for i in range(len(years))], line=dict(color='#000000', width=0.5)), name = category)]
    bar_change_layout = go.Layout(title = 'Annual Percentage Change',
                   titlefont = dict(family='Avenir Book',
                                   size = 24,
                                   color='#000000'),
                  xaxis=dict(title="Year",
                             titlefont=dict(family='Avenir Book',
                                            size=14,
                                            color='#000000'),
                            tickfont=dict(size=14,color='#000000')),
                  yaxis=dict(title='Percentage Change in Expenses',
                             titlefont=dict(family='Avenir Book',
                                            size=14,
                                            color='#000000'),
                             tickfont=dict(size=14,color='#000000'),
                             ))
    bar_change_fig = go.Figure(data=bar_change_data, layout=bar_change_layout)
    #table showing annual data
    tax_table = expense_category[(expense_category['category_en'] == category)][['Year', 'Current Year Total', 'Budget']].astype(int)
    tax_table['Variance (in %)'] = (((tax_table['Current Year Total']/tax_table['Budget'])-1)*100).round(1)
    colorscale = [[0, '#800000'],[.5, '#f08080'],[1, '#ffffff']]
    data = ff.create_table(tax_table, colorscale=colorscale, height_constant=15)

    line_chart = json.dumps(line_fig, cls=plotly.utils.PlotlyJSONEncoder)
    bar_change = json.dumps(bar_change_fig, cls=plotly.utils.PlotlyJSONEncoder)
    tax_source_table = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    collections_bar = json.dumps(collection_fig, cls=plotly.utils.PlotlyJSONEncoder)
    return line_chart, bar_change, tax_source_table, collections_bar

def alt_table(category):
    expense_category = expense[(expense['category_en'] == category) & (expense['Year'] <= 2018) & (expense['Month'] == 12)]
    year = expense_category['Year'].unique()
    total = expense_category['Current Year Total'].round(0)
    df = pd.DataFrame({'Tax Year': year, 'Year End Result': total})
    return df


@app.route('/')
def index():
    table = cy_estimate_table(2019)
    table_ny = ny_table(2020)
    # current_year = 2019
    years = expense['Year'].unique()[:-1]
    revenue_categories = revenue['category_en'].unique()
    revenue_categories_en = revenue['category_en'].unique()
    expense_categories = expense['category_en'].unique()
    expense_categories_en = expense['category_en'].unique()
    return render_template('index.html',
                            current_year = current_year,
                            plot=table,
                            plot2=table_ny,
                            year_len = len(years),
                            years=years,
                            rev_len = len(revenue_categories),
                            revenue_category=revenue_categories,
                            revenue_category_en=revenue_categories_en,
                            exp_len = len(expense_categories),
                            expense_category=expense_categories,
                            expense_category_en=expense_categories_en)


@app.route('/year_results', methods=['GET', 'POST'])
def results():
    year = request.args['Year']
    summary_table = py_table(year)[0]
    summary_bar = py_table(year)[1]
    revenue_table = py_table_revenues(year)
    expense_table = py_table_expenses(year)
    return render_template('year_results.html',
                            plot=summary_table,
                            bar = summary_bar,
                            plot2=revenue_table,
                            plot3=expense_table,
                            year=year) #plot is the html item to render
    #how to clear url input by clicking back button on browser?


@app.route('/tax_detail', methods=['GET', 'POST'])
def tax_detail():
    category = request.args["Tax"]
    avg_change = revenue[(revenue['category_en'] == category) & (revenue['Year'] <= 2018) & (revenue['Month'] == 12)].groupby('Year')['Rolling Total'].pct_change().mean()*100
    bar = tax_detail_info(category)
    return render_template('tax_detail.html',
                            avg_change = avg_change,
                            plot=bar[0],
                            plot2=bar[1],
                            category=category,
                            plot3=bar[2],
                            plot4=bar[3],
                            plot5=bar[4])

@app.route('/expense_detail', methods=['GET', 'POST'])
def expense_detail():
    category = request.args["Expense"]
    avg_change = expense[(expense['category_en'] == category) & (expense['Year'] <= 2018) & (expense['Month'] == 12)].groupby('Year')['Current Year Total'].pct_change().mean()*100
    bar = expense_detail_info(category)
    return render_template('expense_detail.html',
                            avg_change = avg_change,
                            plot=bar[0],
                            plot2=bar[1],
                            category=category,
                            plot3=bar[2],
                            plot4=bar[3])

if __name__ == '__main__':
    app.debug = True
    app.run()
