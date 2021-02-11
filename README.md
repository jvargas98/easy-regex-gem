# easy-regex-gem

easy-regex gem allows you to use and create regular expressions in a very easy way. You can also create custom regular expressions.

## Requirements

- Make it easy to obtain regular expressions.
- Allow to create custom regular expressions.
- To create custom regular expressions, certain parameters must be passed.
- The gem should have the following common regular expressions:
  - Url.
  - Domain.
  - Email.
  - Password.
  - Name.
  - Phone number.
  - Address
- Regular expressions must be classified according to their function.

## Use

- Install the gem *easy-regex* `gem install easy-regex-x.x.x.gem`
- Use the gem `require 'easy-regex'`
- Call the module `ERegex` follow by the class `(Internet|Personal)` and the     regex `ERegex::Internet.email`
 	- Classification
    - Internet
      - email
        - email_custom(domain->String, length->Integer)
      - password
        - password_custom(length->Integer, start_with->String, end_with->String)
      - domain
        - domain_custom(length->Integer, end_with->String)
      - url
    - Personal
      - name
      - phone
        - phone_custom(phone_region->Boolean, spaces->Boolean)
      - address
