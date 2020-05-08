Як позбавитися Windows за один день
===================================

Це книга, яка покликана допомогти новачкам якнайпростіше перейти на використання ОС Лінукс.

Необхідний інструментарій для редагування
-----------------------------------------

Найлегше редагувати утилітою retext. Вона підтримує попередній перегляд. Але цілком можна обійтися й звичайним текстовим редактором. Наприлкад scite.

    sudo apt-get install retext

Герерація книги в форматі pdf
-----------------------------

Для генерації використовується markdown-pdf з плагіном remarkable-classy. Їхнє встановлення за умови повноцінного node.js просте:

    sudo npm install -g markdown-pdf remarkable-classy

Сам node.js також можна встановити з репозиторіїв:

    sudo apt install npm

Для Ubuntu 16.04 краще використати nvm (інструкція на сайті https://github.com/creationix/nvm#install-script) та встановити LTS версію node.js:

    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

Перевідкрийте термінал і продовжіть встановлення markdown-pdf

    nvm install --lts
    npm install -g markdown-pdf

Щоб повноцінно генерувати PDF вручну, cлід додати налаштування в секцію opts файлу /usr/local/bin/markdown-pdf:

    remarkable: {
        html: true,
        breaks: true,
        plugins: [ require('remarkable-classy') ],
        syntax: [ 'footnote', 'sup', 'sub' ]
    }


Після цього можна використовувати генератор:

    cd md && markdown-pdf ./*.md -o ../ec11book.pdf -s ../pdf.css -h ../runnings.js

Для простоти генерації створено makefile, тому команда спрощується до просто 

    make pdf

markdown-it HTML
----------------

    sudo npm install -g markdown-it-pdf markdown-it markdown-it-classy
    make html
