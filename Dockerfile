FROM nginx:1.15.8
COPY nginx.conf /etc/nginx/nginx.conf

RUN makedir -p /projects/handan /projects/lianhua /projects/agentsite
RUN makedir -p /projects/logs/handan /projects/logs/lianhua /projects/logs/agentsite

WORKDIR /projects

# ADD /root/server/AgentSite/static /projects/agentsite/static
# ADD /root/server/LV/static /projects/handan/static
# ADD /root/server/LianHua/static /projects/lianhua/static

ADD .

CMD ["nginx", "-g", "daemon off;"]