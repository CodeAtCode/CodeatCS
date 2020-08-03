# Codeat Coding Standards

[![Packagist](https://img.shields.io/packagist/v/codeatcode/codeatcs.svg?color=239922&style=popout)](https://packagist.org/packages/codeatcode/codeatcs)

CodeatCS is a project with rulsets used for the Codeat plugins/themes development based on [WordPress Coding Standards](https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards) project, implementing official [WordPress PHP Coding Standards](https://make.wordpress.org/core/handbook/coding-standards/php/), [Slevomat Coding Standard](https://github.com/slevomat/coding-standard), [PHPCompatibilityWP](https://github.com/PHPCompatibility/PHPCompatibility) and [PHPCompatibilityWP](https://github.com/PHPCompatibility/PHPCompatibilityWP).  

## PHP Code Sniffer

### How to disable rules

```bash
phpcs --standard=./vendor/codeatcode/codeatcs/CodeatCodingStandard/ruleset.xml ./file.php  -s
```

The `-s` parameter shows sniff codes in all reports.
