-- CREATE TABLE CARD_PRODUCTS_V1
-- CREATE TABLE CARD_PRODUCTS_V1_TEXTS
-- CREATE TABLE TAGS
-- CREATE TABLE TAG_RELATIONS

-- MIGRATE CARD_PRODUCTS INTO CARD_PRODUCTS_V1 - Можешь использовать то что сделал Миртолип, главное проверь и оставь коммент о картинках

-- MIGRATE CARD_PRODUCTS_TEXT INTO CARD_PRODUCTS_V1_TEXTS - Подготовь все для кредитки, убедиться что этого для каталога достаточно и заполни для остальных карт

-- INSERT INTO TAGS - Собери все баджи и фильтры и вставь
-- INSERT INTO TAG_RELATIONS - Из файла give-me-filters.sql сделай связи с рендером для баджей и вставь теги
-- INSERT INTO LAYOUT_RENDERS FOR TAGS - Выгрузи все объекты рендера из разметки каталога и вставь
-- INSERT INTO LAYOUT_* FOR CATALOG
-- INSERT INTO ICONS - Вставь иконку вызова catalog_filters_group

-- CORRECTLY ORDER
-- CHECK EVERYTHING AGAIN AND MAKE SURE CATALOG IS FILLABLE

201 Кредитная карта Возможностей
200 VISA START SUM
861 Uzcard Duo
871 HUMO Virtual
870 HUMO
030 VISA Virtual
031 VISA Start
032 VISA Platinum
034 Visa Infinite
068 Mastercard Virtual
040 Mastercard Platinum
001 UnionPay Classic
002 UnionPay Gold

INSERT INTO TAG_RELATIONS (TAG_ID, TARGET_ID, TARGET, SORT_ORDER, IS_PRIMARY, RENDER_ID)
VALUES
-- badge
    (SELECT id FROM TAGS WHERE NAME='tag_soon' AND TYPE='badge', SELECT id FROM CARD_PRODUCTS_V1 WHERE PRODUCT_CODE='201', 'CARD_PRODUCTS_V1', 100, 0, SELECT id FROM LAYOUT_RENDERS WHERE key='badge_primary_small_white_red'),
    -- TODO: Обговори с фронтами, условный размер самое оптимальное решение
    -- STOPPED HERE
-- filter
    -- Кредитная карта Возможностей
    -- VISA START SUM
    -- Uzcard Duo
    -- HUMO Virtual
    -- HUMO
    -- VISA Virtual
    -- VISA Start
    -- VISA Platinum
    -- Visa Infinite
    -- Mastercard Virtual
    -- Mastercard Platinum
    -- UnionPay Classic
    -- UnionPay Gold

INSERT INTO TAGS (NAME, TYPE, "GROUP")
VALUES
-- badge
-- Скоро                tag_soon
-- Новый                tag_new
-- Выгода х3            tag_benefit_x3
-- Бесконтактная оплата tag_contactless_payment
-- Виртуальная карта    tag_virtual_card
-- 1+1 подарок          tag_1_plus_1
-- Премиум              tag_premium
-- Бесконтактная карта  tag_contactless_card
-- Выгода               tag_benefit
    ('tag_soon', 'badge', NULL),
    ('tag_new', 'badge', NULL),
    ('tag_benefit_x3', 'badge', NULL),
    ('tag_contactless_payment', 'badge', NULL),
    ('tag_virtual_card', 'badge', NULL),
    ('tag_1_plus_1', 'badge', NULL),
    ('tag_premium', 'badge', NULL),
    ('tag_contactless_card', 'badge', NULL),
    ('tag_benefit', 'badge', NULL),
-- filter
-- Uzcard               filter_payment_uzcard
-- Humo                 filter_payment_humo
-- VISA                 filter_payment_visa
-- Mastercard           filter_payment_mastercard
-- UnionPay             filter_payment_unionpay
-- UZS                  filter_currency_uzs
-- USD                  filter_currency_usd
-- Бесплатная           filter_price_free
-- Платная              filter_price_fee
-- Дебитовая            filter_type_debit
-- Кредитная            filter_type_credit
-- Международная        filter_type_international
-- Физическая           filter_aspect_physical
-- Виртуальная          filter_aspect_virtual
    ('filter_payment_uzcard', 'filter', 'payment'),
    ('filter_payment_humo', 'filter', 'payment'),
    ('filter_payment_visa', 'filter', 'payment'),
    ('filter_payment_mastercard', 'filter', 'payment'),
    ('filter_payment_unionpay', 'filter', 'payment'),
    ('filter_currency_uzs', 'filter', 'currency'),
    ('filter_currency_usd', 'filter', 'currency'),
    ('filter_price_free', 'filter', 'price'),
    ('filter_price_fee', 'filter', 'price'),
    ('filter_type_debit', 'filter', 'type'),
    ('filter_type_credit', 'filter', 'type'),
    ('filter_type_international', 'filter', 'type'),
    ('filter_aspect_physical', 'filter', 'aspect'),
    ('filter_aspect_virtual', 'filter', 'aspect');

-- short, name, bullets
INSERT INTO CARD_PRODUCTS_V1_TEXTS (CARD_PRODUCT_ID, "LANGUAGE", TITLE, DESCRIPTION, ICON_ID, TYPE, SORT_ORDER, RENDER_ID, ACTION_ID)
VALUES
-- Short
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
-- Name
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Карта возможностей', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Possibilities credit card', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Imkoniyatlar credit kartasi', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA START SUM
    ('201', 'ru', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA START SUM', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Uzcard Duo
    ('201', 'ru', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Uzcard Duo', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- HUMO
    ('201', 'ru', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'HUMO', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- HUMO Virtual
    ('201', 'ru', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'HUMO Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA Virtual
    ('201', 'ru', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA Start
    ('201', 'ru', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Start', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA Platinum
    ('201', 'ru', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'VISA Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Visa Infinite
    ('201', 'ru', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Visa Infinite', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Mastercard Virtual
    ('201', 'ru', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Mastercard Virtual', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Mastercard Platinum
    ('201', 'ru', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'Mastercard Platinum', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- UnionPay Classic
    ('201', 'ru', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'UnionPay Classic', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- UnionPay Gold
    ('201', 'ru', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', 'UnionPay Gold', NULL, NULL, 'name', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
-- Bullets
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', "", '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'ru', 'Тип карты', 'Рассрочка', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'ru', 'Лимит', 'До 100 млн. сум', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA START SUM
    ('200', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('200', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('200', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('200', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('200', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('200', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- Uzcard Duo
    ('861', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('861', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('861', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('861', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('861', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('861', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- HUMO Virtual
    ('871', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('871', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('871', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('871', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('871', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('871', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- HUMO
    ('870', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('870', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('870', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('870', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('870', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA Virtual
    ('030', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('030', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('030', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('030', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('030', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('030', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- VISA Start
    ('031', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('031', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('031', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('031', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('031', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- VISA Platinum
    ('032', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('032', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Visa Infinite
    ('034', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('034', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('034', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('034', 'ru', '170 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('034', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('034', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- Mastercard Virtual
    ('068', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('068', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('068', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('068', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('068', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('068', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- Mastercard Platinum
    ('040', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'en', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('040', 'uz', '', '', NULL, 'bullet', 300, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    -- UnionPay Classic
    ('001', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('001', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('001', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('001', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('001', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('001', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- UnionPay Gold
    ('002', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('002', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('002', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('002', 'ru', '34 000 сум', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('002', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),
    ('002', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300'), NULL),    

CREATE TABLE CARD_PRODUCTS_V1 {
    ID                       NUMBER(10) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL,
    PRODUCT_CODE             VARCHAR(50) NULL, /** 870, 860, 840, ... */
    COMMISSION               VARCHAR(50) NULL, /** IDENTIFICATOR COMMISSION FOR ISSUE CARD */
    HAS_CUSTOM_DESIGN        NUMBER(1) DEFAULT 0 NOT NULL, /** 0|1 */
    CUSTOM_DESIGN_COMMISSION VARCHAR(50) NULL, /** IDENTIFICATOR COMMISSION FOR ISSUE CARD */
    CUSTOM_DESIGN_CODE       VARCHAR(50) NULL, /** CUSTOM DESIGN CODE: 036, 037, ... */ -- [X] Q: Под вопросом, тк не ясно куда она ведет - как и сейчас CUSTOM_DESIGN_ID
    STATE                    NUMBER(1) DEFAULT 0 NOT NULL, /** 0|1|2 */
    BACKGROUND               VARCHAR(250) NULL, /** image url */
    LOGOS_LAYER              VARCHAR(250) NULL, /** image url */
    EMBOSS_TYPE              VARCHAR(50) NOT NULL, /** uzcard|humo|tieto */
    IS_VIRTUAL               NUMBER(1) DEFAULT 0 NOT NULL, /** 0|1 */
    TYPE_APPLICATION         VARCHAR(50) NOT NULL, /** uzcard_issue, humo_issue, humovirtual, visa_issue */ -- [X] Q: Зачем? Не совсем понял - Нужно для USERS_APPLICATIONS
    SORT_ORDER               NUMBER(10) DEFAULT 100 NOT NULL, /** sort order ascending order */ -- [X] Q: Зачем? - Делать порядок в каталоге
    CURRENCY                 VARCHAR(50) DEFAULT 'UZS' NOT NULL, /** Card currency */ -- [X] Q: Почему не local|foreign? - В будущем закладывать более конкретно
    PRICE                    VARCHAR(250) NOT NULL, /** card price in cents */
    CARD_IMAGE               VARCHAR(250) NOT NULL, /** card image url */
    BACKGROUND_COLOR         VARCHAR(250) NOT NULL, /** card background color of card (page_background_color) */
    HEADER_COLOR             CLOB NULL, /** card background color of card (widget) */
    CREATED_AT               TIMESTAMP DEFAULT SYSDATE,
    UPDATED_AT               TIMESTAMP DEFAULT SYSDATE,
    DELETED_AT               TIMESTAMP NULL,
    CONSTRAINT CARD_PRODUCTS_V1_PK PRIMARY KEY (ID)
}
CREATE TABLE CARD_PRODUCTS_V1_TEXTS {
    ID                       NUMBER(10) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL,
    CARD_PRODUCT_ID          NUMBER(10) NOT NULL, /** Foreign key from table card_products_v1 id */
    LANGUAGE                 VARCHAR(3) NOT NULL, /** uz|ru|en */
    TITLE                    VARCHAR(250) NOT NULL, /** title of the product - */
    DESCRIPTION              CLOB NOT NULL, /** description of product - */
    ICON_ID                  VARCHAR(250), -- [X] Q: Почему CLOB? - Должно быть ICON_ID
    TYPE                     VARCHAR(250) NOT NULL, /** collapse, text, etc. */
    SORT_ORDER               NUMBER(10) DEFAULT 100 NOT NULL,
    RENDER_ID                VARCHAR(250) NULL, /** FK - LAYOUT_RENDERS.ID */
    ACTION_ID                VARCHAR(250) NULL, /** FK - LAYOUT_ACTIONS.ID */
    CREATED_AT               TIMESTAMP DEFAULT SYSDATE,
    UPDATED_AT               TIMESTAMP DEFAULT SYSDATE,
    DELETED_AT               TIMESTAMP NULL,
    CONSTRAINT CARD_PRODUCTS_V1_TEXTS_PK PRIMARY KEY (ID)
}
CREATE TABLE TAGS {
    ID                       NUMBER(10) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL,
    NAME                     VARCHAR(250) NOT NULL,
    TYPE                     VARCHAR(50) NOT NULL,
    "GROUP"                  VARCHAR(50) NULL,
    STATE                    NUMBER(1) DEFAULT 0 NOT NULL,
    CREATED_AT               TIMESTAMP DEFAULT SYSDATE,
    UPDATED_AT               TIMESTAMP DEFAULT SYSDATE,
    DELETED_AT               TIMESTAMP NULL,
    CONSTRAINT TAGS_PK PRIMARY KEY (ID)
}
CREATE TABLE TAG_RELATIONS {
    -- [X] Q: Подумали о своей универсальной связке? - Пока не будет, слишком высокая неопределенность
    ID                       NUMBER(10) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL, -- [X] Q: Зачем ID в промежуточной таблице - Пусть будет не мешает
    TAG_ID                   NUMBER(10) NOT NULL,
    TARGET_ID                NUMBER(10) NOT NULL, -- [X] Q: В теории у него может быть не только NUMBER что скажите? - Не планируется
    TARGET                   VARCHAR(250) NOT NULL,
    SORT_ORDER               NUMBER(10) DEFAULT 100 NOT NULL, -- TODO: Most likely move sort_order to TAGS, if yes, need to update TAGS INSERTS and only then continue TAG_RELATIONS INSERT
    IS_PRIMARY               NUMBER(1) DEFAULT 0 NOT NULL, /** 0|1 */
    RENDER_ID                VARCHAR(250) NULL, /** FK - LAYOUT_RENDERS.ID */
    CREATED_AT               TIMESTAMP DEFAULT SYSDATE,
    UPDATED_AT               TIMESTAMP DEFAULT SYSDATE,
    CONSTRAINT TAG_RELATIONS_PK PRIMARY KEY (ID)
}
CREATE INDEX TAG_RELATIONS_IDX_TARGET ON TAG_RELATIONS (TARGET, TARGET_ID);
CREATE INDEX TAG_RELATIONS_IDX_TAG ON TAG_RELATIONS (TAG_ID);

INSERT INTO CARD_PRODUCTS_V1 (PRODUCT_CODE, COMMISSION, HAS_CUSTOM_DESIGN, CUSTOM_DESIGN_COMMISSION, CUSTOM_DESIGN_CODE, STATE, BACKGROUND, LOGOS_LAYER, EMBOSS_TYPE, IS_VIRTUAL, TYPE_APPLICATION, SORT_ORDER, CURRENCY, PRICE, CARD_IMAGE, BACKGROUND_COLOR, HEADER_COLOR)
VALUES 
    -- Кредитная карта Возможностей
    ('201', 'C4VSUM', 0, NULL, NULL, 1, 'images/cardissue/credit_lime_3.png', 'images/visa_tpl.png', 'tieto', 0, 'openvisasum', 400, 'UZS', 0, 'images/201_card_image.png', 'Thunderball', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA START SUM
    ('200', 'C4VSUM', 0, NULL, NULL, 1, 'images/cardissue/Visa_green_cl.png', 'images/visa_tpl.png', 'tieto', 0, 'openvisasum', 500, 'UZS', 0, 'images/200_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Uzcard Duo
    ('861', 'C4UCM', 0, NULL, NULL, 1, 'images/cardissue/Uzcard-MIR.png', 'images/uzcard_tpl.png', 'uzcard', 0, 'opencobadge', 600, 'UZS', 0, 'images/861_card_image.png', 'Goldfinger', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- HUMO Virtual
    ('871', 'C4VC', 0, NULL, NULL, 1, 'images/cardissue/background_humo_virtual_nl.png', 'images/humo_tpl.png', 'humo', 1, 'openhumovirtual', 700, 'UZS', 0, 'images/871_card_image.png', 'Casino Royale', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- HUMO
    ('870', 'C4H', 1, 'PC4HID', NULL, 1, 'images/cardissue/humo.png', 'images/humo_tpl.png', 'humo', 0, 'openhumo', 800, 'UZS', 0, 'images/870_card_image.png', 'Skyfall', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Virtual
    ('030', 'C4VC', 0, NULL, NULL, 1, 'images/cardissue/background_virtual_fccy.png', 'images/visa_tpl.png', 'tieto', 1, 'openvisavirtual', 900, 'USD', 0, 'images/030_card_image.png', 'Spectre', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Start
    ('031', '4VS', 1, 'P4VSID', '035', 1, 'images/cardissue/Visa_green_cl.png', 'images/visa_tpl.png', 'tieto', 0, 'openvisaclassic', 1000, 'USD', 0, 'images/031_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- VISA Platinum
    ('032', '4VPL', 1, 'P4VLID', '036', 1, 'images/cardissue/Visa_light.png', 'images/visa_tpl.png', 'tieto', 0, 'openvisagold', 1100, 'USD', 3750000, 'images/032_card_image.png', 'The World Is Not Enough', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Visa Infinite
    ('034', '4VI', 0, NULL, NULL, 1, 'images/cardissue/infinite_visa_background.png', 'images/visa_tpl.png', 'tieto', 0, 'openvisainfinite', 1200, 'USD', 18750000, 'images/034_card_image.png', 'Dr No', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Mastercard Virtual
    ('068', '4MCV', 0, NULL, NULL, 1, 'images/cardissue/mastercard_virtual_1116x704.png', 'images/visa_tpl.png', 'tieto', 1, 'mastercardvirtual', 1300, 'USD', 0, 'images/068_card_image.png', 'Moonraker', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- Mastercard Platinum
    ('040', '4MCPL', 1, 'P4MCPLID', '042', 1, 'images/cardissue/MasterCardLight.png', 'images/visa_tpl.png', 'tieto', 0, 'openmcardlight', 1400, 'USD', 3750000, 'images/040_card_image.png', 'The World Is Not Enough', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- UnionPay Classic
    ('001', 'C4UPC', 0, NULL, NULL, 1, 'images/cardissue/union_pay.png', 'images/visa_tpl.png', 'tieto', 0, 'opencupclass', 1500, 'USD', 0, 'images/001_card_image.png', 'Quantum of Sloace', '["Gradient/1/Left","Gradient/1/Right"]'),
    -- UnionPay Gold
    ('002', 'C4UPG', 0, NULL, NULL, 1, 'images/cardissue/uniop_pay_gold.png', 'images/visa_tpl.png', 'tieto', 0, 'opencupgold', 1600, 'USD', 3750000, 'images/002_card_image.png', 'Golden Eye', '["Gradient/1/Left","Gradient/1/Right"]');
    -- BACKGROUND, LOGOS_LAYER, CARD_IMAGE необходимо будет загрузить под такими же путями
