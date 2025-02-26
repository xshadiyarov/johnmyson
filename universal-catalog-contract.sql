CREATE TABLE TAGS {
    ID
    NAME
    TYPE
    GROUP
    STATE
    CREATED_AT
    UPDATED_AT
    DELETED_AT
    CONSTRAINT TAGS_PK PRIMARY KEY (ID)
}
CREATE TABLE TAGS_RELATIONS {
    TAG_ID
    TARGET_ID
    TARGET -- Для того чтобы можно было связывать с разными таблицами, конкретно для разных типов продуктов
    SORT_ORDER
    IS_PRIMARY
    RENDER_ID
    -- [X] PQ: А как стили ставятся? -- RENDER_ID
    -- [X] PQ: Как будет вестись разделение между фильтрами и тегами -- Через TAGS.TYPE
}
CREATE TABLE CARD_PRODUCTS_V1 {
    ID -- ID
    PRODUCT_CODE -- PRODUCT_ID
    COMMISSION -- COMMISSION_NAME
    HAS_CUSTOM_DESIGN -- CUSTOM_DESIGN
    CUSTOM_DESIGN_COMMISSION
    CUSTOM_DESIGN_CODE -- CUSTOM_DESIGN_ID
    STATE -- STATE
    BACKGROUND -- BACKGROUND
    LOGOS_LAYER -- LOGOS_LAYER
    EMBOSS_TYPE
    IS_VIRTUAL
    TYPE_APPLICATION -- APPLICATION_TYPE
    SORT_ORDER -- SHOW_ORDER
    CURRENCY -- CURRENCY
    PRICE -- [X] Q: Цена чего? -- Чтобы не синхронизироваться с абс, сейчас это к text таблицы
    CARD_IMAGE -- [X] Q: Чем отличается от BACKGROUND? -- background картинка, logos_layer наложение, card_image мини картинка в каталоге
    BACKGROUND_COLOR
    HEADER_COLOR -- [X] Q: Это цвет верхней секции? Но там же градиент -- Поэтому он clob
    CREATED_AT
    UPDATED_AT
    DELETED_AT
    -- TABLE: CARD_PRODUCTS
    -- ID -- ID
    -- TITLE -- [X] PQ: Откуда теперь будет браться TITLE и PRODUCT_DESC -- Судя по всему из CARD_PRODUCTS_META
    -- PRODUCT_DESC
    -- PRODUCT_ID -- PRODUCT_ID
    -- APPLICATION_TYPE -- TYPE_APPLICATION
    -- CURRENCY -- CURRENCY
    -- LANG -- [X] PQ: Как реализован перевод теперь? -- CARD_PRODUCTS_META
    -- SHOW_ORDER -- SORT_ORDER
    -- COMMISSION_NAME -- COMMISSION
    -- BACKGROUND -- BACKGROUND
    -- BRANCHES
    -- STATE -- STATE
    -- CUSTOM_DESIGN -- HAS_CUSTOM_DESIGN
    -- LOGOS_LAYER -- LOGOS_LAYER
    -- CUSTOM_DESIGN_ID -- CUSTOM_DESIGN_CODE
    -- PATTERNS
}

CREATE TABLE CARD_PRODUCTS_META {
    ID
    CARD_PRODUCT_ID
    LANGUAGE
    TITLE
    -- DESCRIPTION [] Q: По-моему он тут вообще не нужен, если есть CARD_PRODUCTS_V1_TEXTS типа description
    SHORT -- [X] Q: SHORT это то что над карточкой в каталоге? -- Да
    PRODUCT_LAYOUT -- [X] Q: Для чего PRODUCT_LAYOUT? -- Скорее всего не будет использоваться, он сам не знает
    CREATED_AT
    UPDATED_AT
    DELETED_AT
    -- [X] Q: В чем причина сепарации этих данных от остального текста в CARD_PRODUCTS_V1_TEXTS или от CARD_PRODUCTS -- Причина сепарации от CARD_PRODUCTS чтобы не плодить дубликаты из-за языка
    -- [X] Q: Можно же перенести в CARD_PRODUCTS_V1_TEXT разделив TYPE'ом и добавив SHORT туда -- На усмотрение Миртолипа
}

CREATE TABLE CARD_PRODUCTS_V1_TEXTS {
    ID -- ID
    CARD_PRODUCT_ID -- CARD_PRODUCT_ID
    LANGUAGE -- LANG
    -- KEY -- По нему у типов advantages будет подтягиваться наложение
    TITLE -- SUBTYPE
    SUBTITLE -- TEXT -- [X] Q: Возможно нужно поменять на SUBTITLE -- Да
    ICON
    TYPE -- TYPE, но другие типы
    SORT_ORDER
    CREATED_AT
    UPDATED_AT
    DELETED_AT
    RENDER_ID
    ACTION_ID -- Так для каждого онбординга заведем его вызывающий экшен и сможем прикреплять индивидуально
    -- [X] Q: Возможно стоит добавить тут ALT_KEY для подгрузки контента i-шек - Добавлен ACTION_ID
    -- [X] Q: Тут нужен либо render_id либо цвет -- Да, render_id
    -- TABLE: CARD_PRODUCTS_TEXTS
    -- ID -- ID
    -- CARD_PRODUCT_ID -- CARD_PRODUCT_ID
    -- TYPE -- TYPE, но другие типы
    -- SUBTYPE
    -- TEXT
    -- LANG -- LANGUAGE
    -- [X] PQ: Почему текст в объекте body это hard code и показать как, можно ли его перенести в БД -- Миртолип подумает
}
