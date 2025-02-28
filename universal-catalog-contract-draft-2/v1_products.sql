-- CREATE TABLE CARD_PRODUCTS_V1
-- CREATE TABLE CARD_PRODUCTS_V1_TEXTS
-- CREATE TABLE TAGS
-- CREATE TABLE TAG_RELATIONS

-- MIGRATE CARD_PRODUCTS INTO CARD_PRODUCTS_V1 - Можешь использовать то что сделал Миртолип, главное проверь и оставь коммент о картинках

-- MIGRATE CARD_PRODUCTS_TEXT INTO CARD_PRODUCTS_V1_TEXTS - Подготовь все для кредитки, убедиться что этого для каталога достаточно и заполни для остальных карт

-- INSERT INTO TAGS - Собери все баджи и фильтры и вставь
-- INSERT INTO LAYOUT_RENDERS FOR TAGS - Выгрузи все объекты рендера из разметки каталога и вставь
-- INSERT INTO TAG_RELATIONS - Из файла give-me-filters.sql сделай связи с рендером для баджей и вставь теги
-- INSERT INTO ICONS - Вставь иконку вызова catalog_filters_group

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
    ('201', 'ru', 'Карта возможностей', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'Possibilities credit card', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'Imkoniyatlar credit kartasi', NULL, NULL, 'name', 100, NULL, NULL),
    -- VISA START SUM
    ('201', 'ru', 'VISA START SUM', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'VISA START SUM', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'VISA START SUM', NULL, NULL, 'name', 100, NULL, NULL),
    -- Uzcard Duo
    ('201', 'ru', 'Uzcard Duo', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'Uzcard Duo', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'Uzcard Duo', NULL, NULL, 'name', 100, NULL, NULL),
    -- HUMO
    ('201', 'ru', 'HUMO', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'HUMO', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'HUMO', NULL, NULL, 'name', 100, NULL, NULL),
    -- HUMO Virtual
    ('201', 'ru', 'HUMO Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'HUMO Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'HUMO Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    -- VISA Virtual
    ('201', 'ru', 'VISA Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'VISA Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'VISA Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    -- VISA Start
    ('201', 'ru', 'VISA Start', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'VISA Start', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'VISA Start', NULL, NULL, 'name', 100, NULL, NULL),
    -- VISA Platinum
    ('201', 'ru', 'VISA Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'VISA Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'VISA Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    -- Visa Infinite
    ('201', 'ru', 'Visa Infinite', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'Visa Infinite', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'Visa Infinite', NULL, NULL, 'name', 100, NULL, NULL),
    -- Mastercard Virtual
    ('201', 'ru', 'Mastercard Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'Mastercard Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'Mastercard Virtual', NULL, NULL, 'name', 100, NULL, NULL),
    -- Mastercard Platinum
    ('201', 'ru', 'Mastercard Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'Mastercard Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'Mastercard Platinum', NULL, NULL, 'name', 100, NULL, NULL),
    -- UnionPay Classic
    ('201', 'ru', 'UnionPay Classic', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'UnionPay Classic', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'UnionPay Classic', NULL, NULL, 'name', 100, NULL, NULL),
    -- UnionPay Gold
    ('201', 'ru', 'UnionPay Gold', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'en', 'UnionPay Gold', NULL, NULL, 'name', 100, NULL, NULL),
    ('201', 'uz', 'UnionPay Gold', NULL, NULL, 'name', 100, NULL, NULL),
-- Bullets
    -- Кредитная карта Возможностей
    ('201', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('201', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('201', 'uz', "", '', NULL, 'bullet', 100, NULL, NULL),
    ('201', 'ru', 'Тип карты', 'Рассрочка', NULL, 'bullet', 200, NULL, NULL),
    ('201', 'en', '', '', NULL, 'bullet', 200, NULL, NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 200, NULL, NULL),
    ('201', 'ru', 'Лимит', 'До 100 млн. сум', NULL, 'bullet', 300, NULL, NULL),
    ('201', 'en', '', '', NULL, 'bullet', 300, NULL, NULL),
    ('201', 'uz', '', '', NULL, 'bullet', 300, NULL, NULL),
    -- TO DELETE
    ('{PRODUCT_ID}', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),

    ('{PRODUCT_ID}', 'ru', 'Доллар США', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),

    ('{PRODUCT_ID}', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),

    ('{PRODUCT_ID}', 'ru', 'Есть (см. подробнее)', 'Индивидуальный дизайн', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),
    -- TO DELETE END
    -- VISA START SUM
    ('{PRODUCT_ID}', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- Uzcard Duo
    ('{PRODUCT_ID}', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- HUMO Virtual
    ('{PRODUCT_ID}', 'ru', 'Сум', 'Валюта', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 100, NULL, NULL),
    ('{PRODUCT_ID}', 'ru', 'БЕСПЛАТНО', 'Выпуск', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'en', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    ('{PRODUCT_ID}', 'uz', '', '', NULL, 'bullet', 200, (SELECT id FROM LAYOUT_RENDER WHERE key='text_b2p300_accent'), NULL),
    -- (STOPPED HERE, REVIEW PREV FIRST)
    -- HUMO
    -- VISA Virtual
    -- VISA Start
    -- VISA Platinum
    -- Visa Infinite
    -- Mastercard Virtual
    -- Mastercard Platinum
    -- UnionPay Classic
    -- UnionPay Gold

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
    SORT_ORDER               NUMBER(10) DEFAULT 100 NOT NULL,
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
