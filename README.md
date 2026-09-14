# BigBasket Category Performance Diagnostic

This project analyzes BigBasket category performance using SQL, Excel/Sheets, Tableau Public, and Python/Pandas. It covers revenue analysis, category targets, dashboard visualization, messy-data cleaning, and cross-validation between SQL and Python.

## Repository Files

- `generate_data.py` — Data generation script
- `bigbasket_capstone.db` — SQLite database
- `orders_raw.csv` — Raw order data
- `products.csv` — Product data
- `verify.sql` — SQL verification
- `01_foundations.sql` — SQL foundations
- `02_aggregation_joins.sql` — Aggregation and joins
- `03_reporting.sql` — Reporting queries
- `monthly_category_revenue.csv` — Monthly category revenue
- `monthly_category_revenue.xlsx` — Spreadsheet workbook
- `Analysis.ipynb` — Python/Pandas analysis
- `ai_log.md` — AI-assisted prompting log

## Tableau Public Dashboard

**Live Tableau Public Dashboard:** https://public.tableau.com/views/BigBasketCategoryPerformanceDiagonists/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
﻿

## Data Story

Household Essentials, Personal Care, and Bakery are above target by ₹4,715, ₹882, and ₹3,410 respectively. Dairy & Eggs is below target by ₹2,410 and is classified as Below Target - Watch, while Snacks & Beverages and Fruits & Vegetables are Below Target - Critical, with shortfalls of ₹2,105 and ₹2,210.

Overall delivered revenue is ₹88,282 across 434 delivered orders, with 3 of 6 categories meeting target.

**Recommendation 1:** Prioritize marketing and catalog investment in Household Essentials because it has the largest positive variance at ₹4,715.

**Recommendation 2:** Prioritize recovery efforts for Fruits & Vegetables because it has the largest percentage shortfall at 18.42% below target.

## Regeneration

Run `generate_data.py` to regenerate the database and raw CSV exports.

## SQL

The SQL analysis is contained in:

- `01_foundations.sql`
- `02_aggregation_joins.sql`
- `03_reporting.sql`
- `verify.sql`

## Part 4

The Python/Pandas cleaning, analysis, cross-validation, and visualizations are available in `Analysis.ipynb`.

## AI Assistance

The two AI-assisted prompts and verification details are documented in `ai_log.md`.
