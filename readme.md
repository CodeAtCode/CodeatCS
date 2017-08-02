# Codeat Coding Standards

CodeatCS  is a project with rulsetes used for the Codeat plugins/themes development based on [YoastCS](https://github.com/Yoast/yoastcs/).

## PHP Code Sniffer

Set of [PHP Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer) rules.

Based on [WordPress Coding Standards](https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards) project, implementing official [WordPress PHP Coding Standards](https://make.wordpress.org/core/handbook/coding-standards/php/).  
Require also a set of string rules for [PHPDoc](https://github.com/CodeAtCode/PHPDoc-for-PHPCS-PHPCBF).

### How to disable rules

```phpcs --standard=/path/CodeatCS/codeat.xml ./file.php  -s```

The `-s` parameter print after the comment of the rules what is the name.

### PhpStorm

Refer to [Using PHP Code Sniffer Tool](https://www.jetbrains.com/phpstorm/help/using-php-code-sniffer-tool.html) in PhpStorm documentation.

After installation `Yoast` standard will be available as a choice in PHP Code Sniffer Validation inspection.
