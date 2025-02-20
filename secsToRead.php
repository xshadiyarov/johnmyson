<?php

function secToRead(int $num, ?string $type, ?string $lang = 'ru'): string
{
	$titles = [
		'ru' => [
            'y' => ['год', 'года', 'лет'],
            'm' => ['месяц', 'месяца', 'месяцев'],
            'w' => ['неделя', 'недели', 'недель'],
            'd' => ['день', 'дня', 'дней'],
            'h' => ['час', 'часа', 'часов'],
            'm' => ['минута', 'минуты', 'минут'],
            's' => ['секунда', 'секунды', 'секунд'],
        ],
        'en' => [
            'y' => ['year', 'years', 'years'],
            'm' => ['month', 'months', 'months'],
            'w' => ['week', 'weeks', 'weeks'],
            'd' => ['day', 'days', 'days'],
            'h' => ['hour', 'hours', 'hours'],
            'm' => ['minute', 'minutes', 'minutes'],
            's' => ['second', 'seconds', 'seconds'],
        ],
        'uz' => [
            'y' => ['yil', 'yil', 'yil'],
            'm' => ['oy', 'oy', 'oy'],
            'w' => ['hafta', 'hafta', 'hafta'],
            'd' => ['kun', 'kun', 'kun'],
            'h' => ['soat', 'soat', 'soat'],
            'm' => ['daqiqa', 'daqiqa', 'daqiqa'],
            's' => ['soniya', 'soniya', 'soniya'],
        ]
	];
    $toOne = [
        'y' => 31104000,
        'm' => 2592000,
        'w' => 604800,
        'd' => 86400,
        'h' => 3600,
        'm' => 60,
        's' => 1
    ];
	$type = in_array($type, ['y','m','w','d','h','m','s']) ? $type : null;
    $lang = in_array($lang, ['ru', 'en', 'uz']) ? $lang : null;
    $titles = $type && $lang ? $titles[$lang][$type] ?? [] : [];
    $toOne = $toOne[$type] ?? null;
    if (empty($titles) || is_null($toOne)) return $num;
    $num = floor($num / $toOne);
    $cases = array (2, 0, 1, 1, 1, 2);
    return $num." ".$titles[ ($num%100 > 4 && $num %100 < 20) ? 2 : $cases[min($num%10, 5)] ];
}

echo secToRead(345600, 'd', 'ru') . PHP_EOL;
echo secToRead(345600, 'd', 'uz') . PHP_EOL;
echo secToRead(345600, 'd', 'en') . PHP_EOL;
