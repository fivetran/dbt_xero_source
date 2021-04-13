# Xero Source

This package models Xero data from [Fivetran's connector](https://fivetran.com/docs/applications/xero). It uses data in the format described by [this ERD](https://docs.google.com/presentation/d/1eJ5eLTWyG2ozdZYLf4oy887anCvLtoE8RhJ1VLmFrbI/edit?usp=sharing).

## Models

This package contains staging models, designed to work simultaneously with our [Xero modeling package](https://github.com/fivetran/xero). The staging models name columns consistently across all packages:

 - Boolean fields are prefixed with `is_` or `has_`.
 - ID primary keys are prefixed with the name of the table. For example, the campaign table's ID column is renamed `campaign_id`.

## Installation Instructions

Check [dbt Hub](https://hub.getdbt.com/) for the latest installation instructions, or [read the dbt docs](https://docs.getdbt.com/docs/package-management) for more information on installing packages.

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

## Contributions

Additional contributions to this package are very welcome! Please create issues or open PRs against `master`. See the [Discourse post](https://discourse.getdbt.com/t/contributing-to-a-dbt-package/657) on the best workflow for contributing to a package.

## Resources:
- Find all of Fivetran's pre-built dbt packages in our [dbt hub](https://hub.getdbt.com/fivetran/)
- Provide [feedback](https://www.surveymonkey.com/r/DQ7K7WW) on our existing dbt packages or what you'd like to see next
- Learn more about Fivetran [in the Fivetran docs](https://fivetran.com/docs)
- Check out [Fivetran's blog](https://fivetran.com/blog)
- Learn more about dbt [in the dbt docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
