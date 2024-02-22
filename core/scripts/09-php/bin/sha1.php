#!/usr/bin/php
<?php

if (!isset($argv[1])) {
    exit;
}

echo sha1($argv[1]) . "\n";
