setFillerMode -core {FILLANT1 FILLANT2 FILLANT5 FILLANT10 FILLANT25} -preserveUserOrder true

addFiller -cell FILL25 -prefix FILLER -doDRC
addFiller -cell FILL10 -prefix FILLER -doDRC
addFiller -cell FILL5 -prefix FILLER -doDRC
addFiller -cell FILL2 -prefix FILLER -doDRC
addFiller -cell FILL1 -prefix FILLER -doDRC

amsFillperi
