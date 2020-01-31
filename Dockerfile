FROM catalystsystem/gitlab-ci-php-base

ENV PHAN_VERSION=2.4.8

RUN pecl install ast
RUN docker-php-ext-enable ast
RUN curl -L https://github.com/phan/phan/releases/download/${PHAN_VERSION}/phan.phar -o /usr/bin/phan
RUN chmod 755 /usr/bin/phan
