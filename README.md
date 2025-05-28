Issue Tracker Rails App
A simple Ruby on Rails 7 application for managing projects and issues, with graphical reports and export functionality in Excel and PDF formats.

Features
CRUD for Projects and Issues

Issues categorized by status and priority

Interactive charts showing:

Number of issues per status (pie chart)

Number of issues per project (bar chart)

Export issues reports as:

Excel (.xlsx) files

PDF files

Responsive UI with basic Bootstrap styling

Tech Stack
Ruby 3.1.4 / Rails 7.1+

PostgreSQL (default) or SQLite (optional)

Chartkick + Chart.js for charts

axlsx_rails for Excel export

wicked_pdf + wkhtmltopdf for PDF export

Importmap for JavaScript dependencies

Puma web server

Setup Instructions
Prerequisites
Ruby 3.1.4

Rails 7.1+

PostgreSQL (or SQLite for simpler setup)

wkhtmltopdf (required for PDF generation)

Node.js and Yarn (optional if using Webpacker, not mandatory for importmap)

Installation
Clone the repository

bash
Copy
Edit
git clone https://github.com/yourusername/issue-tracker.git
cd issue-tracker
Install gems

bash
Copy
Edit
bundle install
Setup database

Update config/database.yml for your environment if necessary.

bash
Copy
Edit
rails db:create
rails db:migrate
rails db:seed # Optional: seeds some sample data
Install wkhtmltopdf

Follow the instructions for your OS from:
https://github.com/wkhtmltopdf/wkhtmltopdf/releases

Start the server

bash
Copy
Edit
rails server
Access the app

Open your browser and navigate to http://localhost:3000

Usage
Manage Projects and their Issues via the web interface.

View reports and charts on the /reports/charts page.

Export the list of issues as Excel or PDF from the Issues index page.

Charts update dynamically based on current data.

Screenshots
Include screenshots of your main views, charts, and export dialogs here.

Testing
(Optional if you added tests)

bash
Copy
Edit
rails test
# or
rspec
Deployment
You can deploy this app to Heroku, Render, or other platforms supporting Rails apps.

Contributing
Contributions are welcome! Please fork the repo and submit pull requests.

License
MIT License
