FROM catalystsystem/gitlab-ci-php-base

ENV PHAN_VERSION=1.2.6

RUN pecl install ast-0.1.6
RUN docker-php-ext-enable ast
RUN curl -L https://github.com/phan/phan/releases/download/${PHAN_VERSION}/phan.phar -o /usr/bin/phan
RUN chmod 755 /usr/bin/phan
