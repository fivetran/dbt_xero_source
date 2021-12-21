[![Apache License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 
# Xero Source
This package models Xero data from [Fivetran's connector](https://fivetran.com/docs/applications/xero). It uses data in the format described by [this ERD](https://fivetran.com/docs/applications/xero#schemainformation).

## Models

This package contains staging models, designed to work simultaneously with our [Xero modeling package](https://github.com/fivetran/dbt_xero). The staging models name columns consistently across all packages:

 - Boolean fields are prefixed with `is_` or `has_`.
 - ID primary keys are prefixed with the name of the table. For example, the campaign table's ID column is renamed `campaign_id`.

## Installation Instructions

Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

Include in your `packages.yml`

```yaml
packages:
  - package: fivetran/xero_source
    version: [">=0.4.0", "<0.5.0"]
```

## Configuration

By default, this package will look for your Xero data in the `xero` schema of your [target database](https://docs.getdbt.com/docs/running-a-dbt-project/using-the-command-line-interface/configure-your-profile). If this is not where your Xero data is, add the following configuration to your `dbt_project.yml` file:

```yml
# dbt_project.yml

...
config-version: 2

vars:
    xero_schema: your_schema_name
    xero_database: your_database_name 
```

### Unioning Multiple Xero Connectors
If you have multiple Xero connectors in Fivetran and would like to use this package on all of them simultaneously, we have provided functionality to do so. The package will union all of the data together and pass the unioned table into the transformations. You will be able to see which source it came from in the `source_relation` column of each model. To use this functionality, you will need to set **either** (**note that you cannot use both**) the `union_schemas` or `union_databases` variables:

```yml
# dbt_project.yml
...
config-version: 2
vars:
  xero_source:
    union_schemas: ['xero_us','xero_ca'] # use this if the data is in different schemas/datasets of the same database/project
    union_databases: ['xero_us','xero_ca'] # use this if the data is in different databases/projects but uses the same schema name
```

### Disabling and Enabling Models

When setting up your Xero connection in Fivetran, it is possible that not every table this package expects will be synced. This can occur because you either don't use that functionality in Xero or have actively decided to not sync some tables. In order to disable the relevant functionality in the package, you will need to add the relevant variables.

By default, all variables are assumed to be `true`. You only need to add variables for the tables you would like to disable:

```yml
# dbt_project.yml

config-version: 2

vars:
    xero__using_credit_note: false                    # default is true
```

## Contributions
Don't see a model or specific metric you would have liked to be included? Notice any bugs when installing 
and running the package? If so, we highly encourage and welcome contributions to this package! 
Please create issues or open PRs against `main`. See [the Discourse post](https://discourse.getdbt.com/t/contributing-to-a-dbt-package/657) for information on how to contribute to a package.

## Database Support
This package has been tested on BigQuery, Snowflake, Postgres and Redshift.

## Resources:
- Provide [feedback](https://www.surveymonkey.com/r/DQ7K7WW) on our existing dbt packages or what you'd like to see next
- Have questions, feedback, or need help? Book a time during our office hours [using Calendly](https://calendly.com/fivetran-solutions-team/fivetran-solutions-team-office-hours) or email us at solutions@fivetran.com
- Find all of Fivetran's pre-built dbt packages in our [dbt hub](https://hub.getdbt.com/fivetran/)
- Learn how to orchestrate [dbt transformations with Fivetran](https://fivetran.com/docs/transformations/dbt)
- Learn more about Fivetran overall [in our docs](https://fivetran.com/docs)
- Check out [Fivetran's blog](https://fivetran.com/blog)
- Learn more about dbt [in the dbt docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the dbt blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
