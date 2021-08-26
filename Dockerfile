# 基础镜像
FROM node:12.2.0-alpine

# 设置项目目录
WORKDIR /app

# 安装依赖
COPY package.json .
RUN npm install

# 启动项目
CMD ["npm", "run", "serve"]