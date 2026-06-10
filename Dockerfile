# Imagem oficial com Cypress, Node.js e navegadores já instalados
FROM cypress/included:14.5.4

# Diretório de trabalho dentro do container
WORKDIR /e2e

# Copia arquivos de dependências primeiro (melhor cache de layers)
COPY package.json package-lock.json ./

# Instala dependências do projeto (Cypress, Allure, etc.)
RUN npm ci

# Copia configuração e testes
COPY cypress.config.js ./
COPY cypress ./cypress

# Executa os testes automatizados
CMD ["npm", "run", "test"]
