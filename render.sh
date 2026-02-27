#!/bin/bash
TIMESTAMP=$(date +%Y%m%d%H%M%S)
quarto render report.qmd --to docx --output "report_${TIMESTAMP}.docx"
quarto render report.qmd --to typst --output "report_${TIMESTAMP}.pdf"
