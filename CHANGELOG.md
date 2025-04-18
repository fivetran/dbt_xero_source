# dbt_xero_source v0.7.0
This release includes the following updates: 

## Breaking Changes
- Added new tracking category models to help Xero customers better understand how segments of their business are performing financially. ([#26](https://github.com/fivetran/dbt_xero_source/pull/26))
  - Here is the mapping between source table and staging model. 

| Source Table                          | Staging Model                                         |  
|--------------------------------------|-------------------------------------------------------|
| `invoice_line_item_has_tracking_category` | `stg_xero__invoice_line_item_has_tracking_category`   |
| `journal_line_has_tracking_category`     | `stg_xero__journal_line_has_tracking_category`        |
| `tracking_category`                     | `stg_xero__tracking_category`                         |
| `tracking_category_option`              | `stg_xero__tracking_category_option`                  |
| `tracking_category_has_option`          | `stg_xero__tracking_category_has_option`              |

- These models are designed to bring tracking category option fields into downstream data models in the `dbt_xero` package. You can find more information in the [v0.9.0 release notes](https://github.com/fivetran/dbt_xero/releases/tag/v0.9.0). 
- Added the following variables to allow the ability to disable your models if you're not planning to utilize the tracking category configuration. These models are enabled by default. [See the README](https://github.com/fivetran/dbt_xero_source/blob/main/README.md#disabling-and-enabling-models) for detailed instructions.  ([#26](https://github.com/fivetran/dbt_xero_source/pull/26))

| Staging Model                                         | Relevant Variable(s)                             |
|-------------------------------------------------------|---------------------------------------------------|
|`stg_xero__invoice_line_item_has_tracking_category`   | `xero__using_invoice_line_item_tracking_category` |
|`stg_xero__journal_line_has_tracking_category`        | `xero__using_journal_line_tracking_category`      |
|`stg_xero__tracking_category`                         | `xero__using_tracking_categories`                 |
| `stg_xero__tracking_category_option`                  | `xero__using_tracking_categories`                 |
| `stg_xero__tracking_category_has_option`              | `xero__using_tracking_categories`                 |

## Under the Hood 
- Updated seed files to properly test out advanced cases for the new tracking categories downstream. 

## Documentation
- Updated `src_xero.yml` and `stg_xero.yml` with the new tables, fields and models that were created. ([#26](https://github.com/fivetran/dbt_xero_source/pull/26)) 
- Added instructions in the README for how to disable these models utilizing the new variables. ([#26](https://github.com/fivetran/dbt_xero_source/pull/26)) 
- Corrected references to connectors and connections in the README. ([#25](https://github.com/fivetran/dbt_xero_source/pull/25)) 

# dbt_xero_source v0.6.0
## 🎉 Feature Update 🎉
- Databricks compatibility! ([#20](https://github.com/fivetran/dbt_xero_source/pull/20))

## 🚘 Under the Hood 🚘
- Incorporated the new `fivetran_utils.drop_schemas_automation` macro into the end of each Buildkite integration test job. ([#19](https://github.com/fivetran/dbt_xero_source/pull/19))
- Updated the pull request [templates](/.github). ([#19](https://github.com/fivetran/dbt_xero_source/pull/19))

# dbt_xero_source v0.5.0

## 🚨 Breaking Changes 🚨:
[PR #17](https://github.com/fivetran/dbt_xero_source/pull/17) includes the following breaking changes:
- Dispatch update for dbt-utils to dbt-core cross-db macros migration. Specifically `{{ dbt_utils.<macro> }}` have been updated to `{{ dbt.<macro> }}` for the below macros:
    - `any_value`
    - `bool_or`
    - `cast_bool_to_text`
    - `concat`
    - `date_trunc`
    - `dateadd`
    - `datediff`
    - `escape_single_quotes`
    - `except`
    - `hash`
    - `intersect`
    - `last_day`
    - `length`
    - `listagg`
    - `position`
    - `replace`
    - `right`
    - `safe_cast`
    - `split_part`
    - `string_literal`
    - `type_bigint`
    - `type_float`
    - `type_int`
    - `type_numeric`
    - `type_string`
    - `type_timestamp`
    - `array_append`
    - `array_concat`
    - `array_construct`
- For `current_timestamp` and `current_timestamp_in_utc` macros, the dispatch AND the macro names have been updated to the below, respectively:
    - `dbt.current_timestamp_backcompat`
    - `dbt.current_timestamp_in_utc_backcompat`
- Dependencies on `fivetran/fivetran_utils` have been upgraded, previously `[">=0.3.0", "<0.4.0"]` now `[">=0.4.0", "<0.5.0"]`.

# dbt_xero_source v0.4.1
## Features
- Adds the `xero__using_bank_transaction` variable to disable the associated models on instances of Xero that don't include that `bank_transaction` source table. ([#15](https://github.com/fivetran/dbt_xero_source/pull/15))

## Contributors
- [@santi95](https://github.com/santi95) ([#15](https://github.com/fivetran/dbt_xero_source/pull/15))

# dbt_xero_source v0.4.0
🎉 dbt v1.0.0 Compatibility 🎉
## 🚨 Breaking Changes 🚨
- Adjusts the `require-dbt-version` to now be within the range [">=1.0.0", "<2.0.0"]. Additionally, the package has been updated for dbt v1.0.0 compatibility. If you are using a dbt version <1.0.0, you will need to upgrade in order to leverage the latest version of the package.
  - For help upgrading your package, I recommend reviewing this GitHub repo's Release Notes on what changes have been implemented since your last upgrade.
  - For help upgrading your dbt project to dbt v1.0.0, I recommend reviewing dbt-labs [upgrading to 1.0.0 docs](https://docs.getdbt.com/docs/guides/migration-guide/upgrading-to-1-0-0) for more details on what changes must be made.
- Upgrades the package dependency to refer to the latest `dbt_fivetran_utils`. The latest `dbt_fivetran_utils` package also has a dependency on `dbt_utils` [">=0.8.0", "<0.9.0"].
  - Please note, if you are installing a version of `dbt_utils` in your `packages.yml` that is not in the range above then you will encounter a package dependency error.

# dbt_xero_source v0.3.0

## Features
- Allow for multiple sources by unioning source tables across multiple Xero connectors.
([#11](https://github.com/fivetran/dbt_xero_source/pull/11))
  - Refer to the [README](https://github.com/fivetran/dbt_xero_source#unioning-multiple-xero-connectors) for more details.

## Under the Hood
- Unioning: The unioning occurs in the tmp models using the `fivetran_utils.union_data` macro. ([#11](https://github.com/fivetran/dbt_xero_source/pull/11))
- Unique tests: Because columns that were previously used for unique tests may now have duplicate fields across multiple sources, these columns are combined with the new `source_relation` column for unique tests and tested using the `dbt_utils.unique_combination_of_columns` macro. ([#11](https://github.com/fivetran/dbt_xero_source/pull/11))
- Source Relation column: To distinguish which source each field comes from, we added a new `source_relation` column in each staging model and applied the `fivetran_utils.source_relation` macro. ([#11](https://github.com/fivetran/dbt_xero_source/pull/11))

# dbt_xero_source v0.1.0 -> v0.3.0
Refer to the relevant release notes on the Github repository for specific details for the previous releases. Thank you!
