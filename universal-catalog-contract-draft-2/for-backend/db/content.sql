/*
Content:
CARD_PRODUCTS_V1
CARD_PRODUCTS_V1_TEXTS
TAGS
TAG_RELATIONS
PRODUCT_ISSUE_BRANCHES
PRODUCT_ISSUE_BRANCHES_META
CARD_ISSUE_BRANCHES
MAPS

Disclaimer:
Это заполнение для тестов.
Убедительная просьба проверить корректность.
*/

INSERT INTO CARD_PRODUCTS_V1 (PRODUCT_CODE, COMMISSION, HAS_CUSTOM_DESIGN, CUSTOM_DESIGN_COMMISSION, CUSTOM_DESIGN_CODE, STATE, BACKGROUND, LOGOS_LAYER, WEBVIEW, EMBOSS_TYPE, IS_VIRTUAL, TYPE_APPLICATION, SORT_ORDER, CURRENCY, PRICE, CARD_IMAGE, BACKGROUND_COLOR, HEADER_COLOR)
VALUES 
    -- Кредитная карта Возможностей
    ('201', 'C4VSUM', 0, NULL, NULL, 1, 'images/cardissue/credit_lime_3.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openvisasum', 400, 'UZS', 0, 'images/201_card_image.png', 'Thunderball', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA START SUM
    ('200', 'C4VSUM', 0, NULL, NULL, 1, 'images/cardissue/Visa_green_cl.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openvisasum', 500, 'UZS', 0, 'images/200_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Uzcard Duo
    ('861', 'C4UCM', 0, NULL, NULL, 1, 'images/cardissue/Uzcard-MIR.png', 'images/uzcard_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'uzcard', 0, 'opencobadge', 600, 'UZS', 0, 'images/861_card_image.png', 'Goldfinger', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- HUMO Virtual
    ('871', 'C4VC', 0, NULL, NULL, 1, 'images/cardissue/background_humo_virtual_nl.png', 'images/humo_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'humo', 1, 'openhumovirtual', 700, 'UZS', 0, 'images/871_card_image.png', 'Casino Royale', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- HUMO
    ('870', 'C4H', 1, 'PC4HID', NULL, 1, 'images/cardissue/humo.png', 'images/humo_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'humo', 0, 'openhumo', 800, 'UZS', 0, 'images/870_card_image.png', 'Skyfall', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Virtual
    ('030', 'C4VC', 0, NULL, NULL, 1, 'images/cardissue/background_virtual_fccy.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 1, 'openvisavirtual', 900, 'USD', 0, 'images/030_card_image.png', 'Spectre', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Start
    ('031', '4VS', 1, 'P4VSID', '035', 1, 'images/cardissue/Visa_green_cl.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openvisaclassic', 1000, 'USD', 0, 'images/031_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Platinum
    ('032', '4VPL', 1, 'P4VLID', '036', 1, 'images/cardissue/Visa_light.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openvisagold', 1100, 'USD', 3750000, 'images/032_card_image.png', 'The World Is Not Enough', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Visa Infinite
    ('034', '4VI', 0, NULL, NULL, 1, 'images/cardissue/infinite_visa_background.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openvisainfinite', 1200, 'USD', 18750000, 'images/034_card_image.png', 'Dr No', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Mastercard Virtual
    ('068', '4MCV', 0, NULL, NULL, 1, 'images/cardissue/mastercard_virtual_1116x704.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 1, 'mastercardvirtual', 1300, 'USD', 0, 'images/068_card_image.png', 'Moonraker', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Mastercard Platinum
    ('040', '4MCPL', 1, 'P4MCPLID', '042', 1, 'images/cardissue/MasterCardLight.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'openmcardlight', 1400, 'USD', 3750000, 'images/040_card_image.png', 'The World Is Not Enough', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- UnionPay Classic
    ('001', 'C4UPC', 0, NULL, NULL, 1, 'images/cardissue/union_pay.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'opencupclass', 1500, 'USD', 0, 'images/001_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- UnionPay Gold
    ('002', 'C4UPG', 0, NULL, NULL, 1, 'images/cardissue/uniop_pay_gold.png', 'images/visa_tpl.png', 'https://3d-card-view.netlify.app/?version=v2', 'tieto', 0, 'opencupgold', 1600, 'USD', 3750000, 'images/002_card_image.png', 'Golden Eye', '["Gradient/1/Left","Gradient/1/Right"]');
    -- BACKGROUND, LOGOS_LAYER, CARD_IMAGE необходимо будет загрузить под такими же путями

INSERT INTO CARD_PRODUCTS_V1_TEXTS (CARD_PRODUCT_ID, LANGUAGE, TITLE, DESCRIPTION, ICON_ID, TYPE, SORT_ORDER, RENDER_ID, ACTION_ID)
VALUES
-- short
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Карта будущего', NULL, NULL, 'short', 100, NULL, NULL),
    ('201', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('201', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- VISA START SUM
    ('200', 'ru', 'Бомбезная зеленая карта, выгода х3', NULL, NULL, 'short', 100, NULL, NULL),
    ('200', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('200', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- Uzcard Duo
    ('861', 'ru', 'Эволюция в семействе Uzcard', NULL, NULL, 'short', 100, NULL, NULL),
    ('861', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('861', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- HUMO
    ('870', 'ru', 'Бысрий старт. Открытие карты до 5 минут', NULL, NULL, 'short', 100, NULL, NULL),
    ('870', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('870', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- HUMO Virtual
    ('871', 'ru', 'Без комиссионные переводы меду HUMO', NULL, NULL, 'short', 100, NULL, NULL),
    ('871', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('871', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- VISA Virtual
    ('030', 'ru', 'Для онлайн покупок', NULL, NULL, 'short', 100, NULL, NULL),
    ('030', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('030', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- VISA Start
    ('031', 'ru', 'Классическая дебетовая карта', NULL, NULL, 'short', 100, NULL, NULL),
    ('031', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('031', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- VISA Platinum
    ('032', 'ru', 'Карта для путешествий', NULL, NULL, 'short', 100, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- Visa Infinite
    ('034', 'ru', 'Люксовая карта, для тех кто хочет комфорта', NULL, NULL, 'short', 100, NULL, NULL),
    ('034', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('034', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- Mastercard Virtual
    ('068', 'ru', 'Для любителей шоппинга', NULL, NULL, 'short', 100, NULL, NULL),
    ('068', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('068', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- Mastercard Platinum
    ('040', 'ru', 'Карта притягивающая скидки', NULL, NULL, 'short', 100, NULL, NULL),
    ('040', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('040', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- UnionPay Classic
    ('001', 'ru', 'Выгодная снятие наличных заграницей', NULL, NULL, 'short', 100, NULL, NULL),
    ('001', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('001', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
    -- UnionPay Gold
    ('002', 'ru', 'Помощник зарубежом', NULL, NULL, 'short', 100, NULL, NULL),
    ('002', 'en', '', NULL, NULL, 'short', 100, NULL, NULL),
    ('002', 'uz', '', NULL, NULL, 'short', 100, NULL, NULL),
-- name
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Карта возможностей', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Possibilities credit card', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Imkoniyatlar credit kartasi', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA START SUM
    ('201', 'ru', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Uzcard Duo
    ('201', 'ru', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- HUMO
    ('201', 'ru', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- HUMO Virtual
    ('201', 'ru', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA Virtual
    ('201', 'ru', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA Start
    ('201', 'ru', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA Platinum
    ('201', 'ru', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Visa Infinite
    ('201', 'ru', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Mastercard Virtual
    ('201', 'ru', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Mastercard Platinum
    ('201', 'ru', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- UnionPay Classic
    ('201', 'ru', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- UnionPay Gold
    ('201', 'ru', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
-- bullets
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', "", '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'ru', 'Тип карты', 'Рассрочка', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'ru', 'Лимит', 'До 100 млн. сум', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA START SUM
    ('200', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('200', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('200', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('200', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('200', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('200', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- Uzcard Duo
    ('861', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('861', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('861', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('861', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('861', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('861', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- HUMO Virtual
    ('871', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('871', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('871', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('871', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('871', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('871', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- HUMO
    ('870', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('870', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('870', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA Virtual
    ('030', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('030', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('030', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('030', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('030', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('030', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- VISA Start
    ('031', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('031', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('031', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- VISA Platinum
    ('032', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Visa Infinite
    ('034', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('034', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('034', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('034', 'ru', '170 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('034', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('034', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- Mastercard Virtual
    ('068', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('068', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('068', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('068', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('068', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('068', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- Mastercard Platinum
    ('040', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    -- UnionPay Classic
    ('001', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('001', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('001', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('001', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('001', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    ('001', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300_accent'), NULL),
    -- UnionPay Gold
    ('002', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('002', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('002', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('002', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('002', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL),
    ('002', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDERS WHERE key='text_b2p300'), NULL);

INSERT INTO TAGS (NAME, TYPE, "GROUP", SORT_ORDER, IS_PRIMARY)
VALUES
-- badge
    ('tag_soon', 'badge', NULL, 100, 0),                           -- Скоро
    ('tag_new', 'badge', NULL, 200, 0),                            -- Новый
    ('tag_benefit_x3', 'badge', NULL, 300, 0),                     -- Выгода х3
    ('tag_contactless_payment', 'badge', NULL, 400, 0),            -- Бесконтактная оплата
    ('tag_virtual_card', 'badge', NULL, 500, 0),                   -- Виртуальная карта
    ('tag_1_plus_1', 'badge', NULL, 600, 0),                       -- 1+1 подарок
    ('tag_premium', 'badge', NULL, 700, 0),                        -- Премиум
    ('tag_contactless_card', 'badge', NULL, 800, 0),               -- Бесконтактная карта
    ('tag_benefit', 'badge', NULL, 900, 0),                        -- Выгода
-- filter
    ('filter_payment_uzcard', 'filter', 'payment', 100, 0),        -- Uzcard
    ('filter_payment_humo', 'filter', 'payment', 200, 0),          -- Humo
    ('filter_payment_visa', 'filter', 'payment', 300, 0),          -- VISA
    ('filter_payment_mastercard', 'filter', 'payment', 400, 0),    -- Mastercard
    ('filter_payment_unionpay', 'filter', 'payment', 500, 0),      -- UnionPay
    ('filter_currency_uzs', 'filter', 'currency', 600, 0),         -- UZS
    ('filter_currency_usd', 'filter', 'currency', 700, 0),         -- USD
    ('filter_price_free', 'filter', 'price', 800, 0),              -- Бесплатная
    ('filter_price_fee', 'filter', 'price', 900, 0),               -- Платная
    ('filter_type_debit', 'filter', 'type', 1000, 1),              -- Дебитовая
    ('filter_type_credit', 'filter', 'type', 1100, 1),             -- Кредитная
    ('filter_type_international', 'filter', 'type', 1200, 1),      -- Международная
    ('filter_aspect_physical', 'filter', 'aspect', 1300, 0),       -- Физическая
    ('filter_aspect_virtual', 'filter', 'aspect', 1400, 0);        -- Виртуальная

INSERT INTO TAG_RELATIONS (TAG_ID, TARGET_ID, TARGET, RENDER_ID)
VALUES
-- badge
    -- Кредитная карта Возможностей
    ((SELECT id FROM TAGS WHERE NAME='tag_soon' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_warning')),
    -- VISA START SUM
    ((SELECT id FROM TAGS WHERE NAME='tag_new' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_warning_warning')),
    ((SELECT id FROM TAGS WHERE NAME='tag_benefit_x3' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_purple_purple')),
    -- Uzcard Duo
    ((SELECT id FROM TAGS WHERE NAME='tag_contactless_payment' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_turquoise_sup_turquoise')),
    -- HUMO Virtual
    ((SELECT id FROM TAGS WHERE NAME='tag_virtual_card' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_lightgreen')),
    -- HUMO
    ((SELECT id FROM TAGS WHERE NAME='tag_contactless_card' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_accent_accent')),
    -- VISA Virtual
    ((SELECT id FROM TAGS WHERE NAME='tag_virtual_card' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_lightgreen')),
    -- VISA Start
    ((SELECT id FROM TAGS WHERE NAME='tag_1_plus_1' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_yellow_sup_yellow')),
    -- VISA Platinum
    ((SELECT id FROM TAGS WHERE NAME='tag_1_plus_1' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_yellow_sup_yellow')),
    -- Visa Infinite
    ((SELECT id FROM TAGS WHERE NAME='tag_premium' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_black_100')),
    -- Mastercard Virtual
    ((SELECT id FROM TAGS WHERE NAME='tag_virtual_card' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_white_100_lightgreen')),
    -- Mastercard Platinum
    ((SELECT id FROM TAGS WHERE NAME='tag_contactless_card' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_accent_accent')),
    -- UnionPay Classic
    ((SELECT id FROM TAGS WHERE NAME='tag_benefit' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_purple_purple')),
    -- UnionPay Gold
    ((SELECT id FROM TAGS WHERE NAME='tag_benefit' AND TYPE='badge'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', (SELECT id FROM LAYOUT_RENDERS WHERE key='badge_secondary_purple_purple')),
-- filter
    -- Кредитная карта Возможностей -- 201
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_uzs' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_credit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201'), 'CARD_PRODUCTS_V1', NULL),
    -- VISA START SUM -- 200
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_uzs' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='200'), 'CARD_PRODUCTS_V1', NULL),
    -- Uzcard Duo -- 861
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_uzcard' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_uzs' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='861'), 'CARD_PRODUCTS_V1', NULL),
    -- HUMO Virtual -- 871
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_humo' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_uzs' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_virtual' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='871'), 'CARD_PRODUCTS_V1', NULL),
    -- HUMO -- 870
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_humo' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_uzs' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='870'), 'CARD_PRODUCTS_V1', NULL),
    -- VISA Virtual -- 030
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_virtual' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='030'), 'CARD_PRODUCTS_V1', NULL),
    -- VISA Start -- 031
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='031'), 'CARD_PRODUCTS_V1', NULL),
    -- VISA Platinum -- 032
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_fee' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='032'), 'CARD_PRODUCTS_V1', NULL),
    -- Visa Infinite -- 034
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_visa' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_fee' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='034'), 'CARD_PRODUCTS_V1', NULL),
    -- Mastercard Virtual -- 068
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_mastercard' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_free' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_virtual' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='068'), 'CARD_PRODUCTS_V1', NULL),
    -- Mastercard Platinum -- 040
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_mastercard' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_fee' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='040'), 'CARD_PRODUCTS_V1', NULL),
    -- UnionPay Classic -- 001
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_unionpay' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_fee' AND TYPE='filter' AND "GROUP"='price'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='001'), 'CARD_PRODUCTS_V1', NULL),
    -- UnionPay Gold -- 002
    ((SELECT id FROM TAGS WHERE NAME='filter_type_international' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_payment_unionpay' AND TYPE='filter' AND "GROUP"='payment'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_currency_usd' AND TYPE='filter' AND "GROUP"='currency'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_price_fee' AND TYPE='filter' AND "GROUP"='proce'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_type_debit' AND TYPE='filter' AND "GROUP"='type'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL),
    ((SELECT id FROM TAGS WHERE NAME='filter_aspect_physical' AND TYPE='filter' AND "GROUP"='aspect'), (SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='002'), 'CARD_PRODUCTS_V1', NULL);

INSERT INTO CARD_PRODUCTS_V1_TEXTS (CARD_PRODUCT_ID, "LANGUAGE", TITLE, DESCRIPTION, ICON_ID, TYPE, SORT_ORDER, RENDER_ID, ACTION_ID)
VALUES
-- description
    -- Visa Platinum
    ('032', 'ru', 'Visa Platinum', 'Приветствуйте новую карту премиального класса с дополнительными элементами комфорта и программами лояльности. Бесплатный консьерж, посещение лаунж-зон, скидки при бронировании отелей, ранний заезд и поздний выезд, а также множество других сервисов, подчеркивающих вашу индивидуальность.', NULL, 'description', 100, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'description', 100, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'description', 100, NULL, NULL),
-- advantage
    -- Visa Platinum
    ('032', 'ru', 'Льготный период', 'У вас есть до 55 дней что-бы погасить потраченную сумму', NULL, 'advantage', 100, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'en', '', NULL, NULL, 'advantage', 100, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'uz', '', NULL, NULL, 'advantage', 100, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'ru', 'Мульти валютная карта', 'Базируется в сумах, но можно тратить в любой точке мира, с авто конверсией', NULL, 'advantage', 200, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'en', '', NULL, NULL, 'advantage', 200, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'uz', '', NULL, NULL, 'advantage', 200, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'ru', 'Кредитный лимит', 'Одобрим сумму до 100 млн. сум.', NULL, 'advantage', 300, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'en', '', NULL, NULL, 'advantage', 300, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'uz', '', NULL, NULL, 'advantage', 300, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'ru', 'Срок выпуска', 'От трех дней, до одной недели', NULL, 'advantage', 400, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'en', '', NULL, NULL, 'advantage', 400, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
    ('032', 'uz', '', NULL, NULL, 'advantage', 400, NULL, (SELECT id FROM LAYOUT_ACTIONS WHERE TYPE='overlay' AND VALUE='i_credit_limit')),
-- question
    -- Visa Platinum
    ('032', 'ru', 'Вопрос 1', 'Вфывфывфывфывфывфывфывфывфывфывфывфывфывфывфыв', NULL, 'question', 100, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'question', 100, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'question', 100, NULL, NULL),
-- condition
    -- Visa Platinum
    ('032', 'ru', 'Минимальный депозит', '$200', NULL, 'condition', 100, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'condition', 100, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'condition', 100, NULL, NULL),
    ('032', 'ru', 'Оплата товаров и услуг', '0%', NULL, 'condition', 200, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'condition', 200, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'condition', 200, NULL, NULL),
    ('032', 'ru', 'Обслуживание карты', '$4,99/месяц', NULL, 'condition', 300, NULL, NULL),
    ('032', 'en', '', NULL, NULL, 'condition', 300, NULL, NULL),
    ('032', 'uz', '', NULL, NULL, 'condition', 300, NULL, NULL);

INSERT INTO PRODUCT_ISSUE_BRANCHES (BUSINESS_ID, LATITUDE, LONGITUDE)
VALUES
    ('00444','41.322475','69.280615'),
    ('00421','41.314719','69.293920'),
    ('01145','41.320990','69.240514');

INSERT INTO CARD_ISSUE_BRANCHES (BRANCH_ID, TIETO_EMBOSS_ID, IS_TIETO_EMBOSS_ACTIVE, HUMO_EMBOSS_ID, IS_HUMO_EMBOSS_ACTIVE, UZCARD_EMBOSS_ID, IS_UZCARD_EMBOSS_ACTIVE, STATE)
VALUES
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00444'),'101',1,'00444',1,'80440',1,1),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00421'),'103',1,'00421',1,'80420',1,1),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='01145'),'115',1,'01145',1,'81140',1,1);

INSERT INTO PRODUCT_ISSUE_BRANCHES_META (BRANCH_ID, LANGUAGE, TITLE, DESCRIPTION, ADDRESS, SHORT_ADDRESS, WEEK_DAYS, OPENING_HOURS, LUNCH_HOURS)
VALUES
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00444'), 'ru', 'ОПЕРУ', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, г. Тaшкент, Юнусобод,  ул. Кодирий, 2', 'Юнусобод,  ул. Кодирий, 2', '[{"name":"Пн","is_working":true},{"name":"Вт","is_working":true},{"name":"Ср","is_working":true},{"name":"Чт","is_working":true},{"name":"Пт","is_working":true},{"name":"Сб","is_working":false},{"name":"Сб","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00444'), 'uz', 'OPERU', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, Toshkent sh., Yunus obod, Abdulla qodiriy 2', 'Yunus obod, Abdulla qodiriy 2', '[{"name":"Du","is_working":true},{"name":"Se","is_working":true},{"name":"Ch","is_working":true},{"name":"Pa","is_working":true},{"name":"Ju","is_working":true},{"name":"Sh","is_working":false},{"name":"Ya","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00444'), 'en', 'OPERU', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, Toshkent c., Yunus obod, Abdulla qodiriy 2', 'Yunus obod, Abdulla qodiriy 2', '[{"name":"Mo","is_working":true},{"name":"Tu","is_working":true},{"name":"We","is_working":true},{"name":"Th","is_working":true},{"name":"Fr","is_working":true},{"name":"Sa","is_working":false},{"name":"Su","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00421'), 'ru', 'Мирзо Улугбек', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, г. Тaшкент, М.Улугбек,  ул. Кодирий, 2', 'М.Улугбек,  ул. Кодирий, 2', '[{"name":"\u041f\u043d","is_working":true},{"name":"\u0412\u0442","is_working":true},{"name":"\u0421\u0440","is_working":true},{"name":"\u0427\u0442","is_working":true},{"name":"\u041f\u0442","is_working":true},{"name":"\u0421\u0431","is_working":false},{"name":"\u0421\u0431","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00421'), 'uz', 'Mirzo Ulugbek', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, Toshkent sh., Mirzo Ulugbek, Abdulla qodiriy 2', 'Mirzo Ulugbek, Abdulla qodiriy 2', '[{"name":"Du","is_working":true},{"name":"Se","is_working":true},{"name":"Ch","is_working":true},{"name":"Pa","is_working":true},{"name":"Ju","is_working":true},{"name":"Sh","is_working":false},{"name":"Ya","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='00421'), 'en', 'Mirzo Ulugbek', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100017, Toshkent c., Mirzo Ulugbek, Abdulla qodiriy 2', 'Mirzo Ulugbek, Abdulla qodiriy 2', '[{"name":"Mo","is_working":true},{"name":"Tu","is_working":true},{"name":"We","is_working":true},{"name":"Th","is_working":true},{"name":"Fr","is_working":true},{"name":"Sa","is_working":false},{"name":"Su","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='01145'), 'ru', 'Шайхантахур', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100021, г. Тaшкент, Шайхонтохур, ул. Навоий, 25', 'Шайхонтохур, ул. Навоий, 25', '[{"name":"\u041f\u043d","is_working":true},{"name":"\u0412\u0442","is_working":true},{"name":"\u0421\u0440","is_working":true},{"name":"\u0427\u0442","is_working":true},{"name":"\u041f\u0442","is_working":true},{"name":"\u0421\u0431","is_working":false},{"name":"\u0421\u0431","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='01145'), 'uz', 'Shaykhontohur', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100021, Toshkent sh., Shayxontohur, Navoiy k., 25', 'Shayxontohur, Navoiy k., 25', '[{"name":"Du","is_working":true},{"name":"Se","is_working":true},{"name":"Ch","is_working":true},{"name":"Pa","is_working":true},{"name":"Ju","is_working":true},{"name":"Sh","is_working":false},{"name":"Ya","is_working":false}]','09:00 – 17:00','13:00 – 14:00'),
    ((SELECT id FROM PRODUCT_ISSUE_BRANCHES WHERE BUSINESS_ID='01145'), 'en', 'Shaykhontohur', '{"busses":[33,25,85,89],"minibusses":[100,150],"metro":["Abdulla Qodiriy"]}', '100021, Tashkent, Shaykhontohur, st. Navoi, 25', 'Shaykhontohur, st. Navoi, 25', '[{"name":"Mo","is_working":true},{"name":"Tu","is_working":true},{"name":"We","is_working":true},{"name":"Th","is_working":true},{"name":"Fr","is_working":true},{"name":"Sa","is_working":false},{"name":"Su","is_working":false}]','09:00 – 17:00','13:00 – 14:00');

INSERT INTO MAPS (KEY, TYPE, URL, STATE)
VALUES
    ('card_issue_default', 'google', 'https://storage.googleapis.com/iyb-mobile-app-front/api-test2/sample_map.kmz', 1);
