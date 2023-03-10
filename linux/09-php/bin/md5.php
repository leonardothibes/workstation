#!/usr/bin/php
<?php

if (!isset($argv[1])) {
    exit;
}

echo md5($argv[1]) . "\n";
