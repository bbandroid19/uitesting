FROM dhaks/mule4.3.0

COPY /target/*.jar /opt/mule/apps/

ENV secure_key=mule

ENV mule_env=dev

EXPOSE 8081

CMD [ "/opt/mule/bin/mule", "-M-Dsecure.key=$secure_key", "-M-Dmule.env=$mule_env"]
