# ---------------------------------------------------------------------
# Aliases and functions for Drush.
# ---------------------------------------------------------------------

# =============== Aliases related to Docksal. ==========================
alias fdr='fin drush'

# Run tests.
alias ft='fin test'

# Configuration commands.
alias fdrim='fin drush cim'
alias fdrex='fin drush cex'
alias fdrimy='fin drush -y cim'
alias fdrexy='fin drush -y cex'

# Running DB updates.
alias fdrudb='fin drush updb'
alias fdrudby='fin drush -y updb'

# Do grunt work for when checking out a new feature branch.
alias fdrunew='fin composer install && fin drush -y updb && fin drush -y cim && fin drush cr'

# Get status of Drupal installation.
alias fdrs='fin drush status'

# Updating features.
alias fdrfu='fin drush fu'
alias fdrfuy='fin drush -y fu'

# Get the size of all databases in MB.
alias fdbsize='fin drush sqlq "SELECT table_schema \"DB Name\", ROUND(SUM(data_length + index_length) / 1024 / 1024, 1) \"DB Size in MB\"  FROM information_schema.tables  GROUP BY table_schema;"'

# =============== Aliases related to Lando. =============================
alias ldr='lando drush'
alias ldrudb='lando drush updb'
alias ldrudby='lando drush -y updb'
alias ldrs='lando drush status'
alias ldrfu='lando drush fu'
alias ldrfuy='lando drush -y fu'
