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

## How to use

### Install
- Install the gem *easy-regex* `gem install easy-regex`

### Use
- Use the gem `require 'easy-regex'`
- Call the module `ERegex` follow by the class `(Internet|Personal)` and the regex you need `ERegex::Internet.email`
 	- Classification
    - Internet
      - email
      - email_custom(domain<String>, length<Integer>)
      - password
      - password_custom(length<Integer>, start_with<String, no required>, end_with<String, no required>)
      - domain
      - domain_custom(length<Integer>, end_with<String, no required>)
      - url
    - Personal
      - name
      - phone
      - phone_custom(phone_region<Boolean, no required>, spaces<Boolean, default = true>)
      - address

#### email
- Regex to validate an email -> from Michael Hartl Rails book 

#### email_custom(domain<String>, length<Integer>)
- Regex to validate an email with a strict domain and a specific long name

#### password
- Regex to validate a password with the following rules
  - Has to have a uppercase letter, a downcase letter, a number and a special character
  - Has to have more than 8 characters

#### password_custom(length<Integer>, start_with<String, no required>, end_with<String, no required>)
- Regex to validate a password following the same regex as password regex but you can define the length of the password also define one character at the beginning and other at the end.

#### domain
- Regex to validate a domain or domain with subdomains

#### domain_custom(length<Integer>, end_with<String, no required>)
- Regex to validate a domain following the same regex as domain but you can define the length of the domain names and the end of the domain after the dot

#### url
- Regex to validate an url

#### name
- Regex to validate a persona name, it has to have at least two words separated with spaces

#### phone
- Regex to validate a phone number, it has the following rules
  - You can write the region of the number after a + symbol with 1 to 4 numbers
  - The phone number can be separeted with spaces, dots or dashs with the rule of 3 numbers follow by 3 numbers and 4 numbers 

#### phone_custom(phone_region<Boolean, no required>, spaces<Boolean, default = true>)
- Regex to validate a phone number with the option to select a region by the number and the spaces can be ommited if you select false

#### address
- Regex to validate a address with street following the number and the neighborhood
