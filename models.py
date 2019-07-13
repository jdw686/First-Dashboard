from FirstDashboard import db

class Revenue_Budget(db.Revenue_Budget):
    __tablename__ = 'Revenue Budget'

    id = db.Column(db.Integer, primary_key=True)
    category = db.Column(db.String())
    budget = db.Column(db.Integer())
    year = db.Column(db.Integer())

    def __init__(self, category, budget, year):
        self.category = category
        self.budget = budget
        self.year = year

    def __repr__(self):
        return '<category {}>'.format(self.category)
