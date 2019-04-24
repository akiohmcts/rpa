@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  rpa startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and RPA_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dfile.encoding=UTF-8"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\rpa-0.0.1.jar;%APP_HOME%\lib\spring-boot-starter-web-2.0.4.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-6.0.11.Final.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-2.0.4.RELEASE.jar;%APP_HOME%\lib\service-auth-provider-client-1.0.4.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-hystrix-2.0.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-core-2.0.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-openfeign-2.0.1.RELEASE.jar;%APP_HOME%\lib\spring-cloud-openfeign-core-2.0.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-json-2.0.4.RELEASE.jar;%APP_HOME%\lib\auth-checker-lib-2.1.3.jar;%APP_HOME%\lib\spring-boot-starter-security-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-retry-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-cache-2.0.4.RELEASE.jar;%APP_HOME%\lib\caffeine-2.5.6.jar;%APP_HOME%\lib\spring-boot-actuator-autoconfigure-2.0.4.RELEASE.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.8.jar;%APP_HOME%\lib\java-logging-spring-3.0.4.jar;%APP_HOME%\lib\java-logging-httpcomponents-3.0.4.jar;%APP_HOME%\lib\java-logging-appinsights-3.0.4.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.6.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.9.6.jar;%APP_HOME%\lib\java-logging-3.0.4.jar;%APP_HOME%\lib\logstash-logback-encoder-5.2.jar;%APP_HOME%\lib\feign-jackson-9.5.1.jar;%APP_HOME%\lib\java-jwt-3.4.0.jar;%APP_HOME%\lib\jjwt-0.7.0.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-archaius-2.0.2.RELEASE.jar;%APP_HOME%\lib\hystrix-metrics-event-stream-1.5.12.jar;%APP_HOME%\lib\hystrix-javanica-1.5.12.jar;%APP_HOME%\lib\hystrix-serialization-1.5.12.jar;%APP_HOME%\lib\feign-hystrix-9.5.1.jar;%APP_HOME%\lib\hystrix-core-1.5.12.jar;%APP_HOME%\lib\archaius-core-0.7.6.jar;%APP_HOME%\lib\jackson-module-afterburner-2.9.6.jar;%APP_HOME%\lib\jackson-databind-2.9.8.jar;%APP_HOME%\lib\feign-form-spring-3.4.0.jar;%APP_HOME%\lib\feign-form-3.4.0.jar;%APP_HOME%\lib\rest-assured-3.0.7.jar;%APP_HOME%\lib\springfox-swagger2-2.9.2.jar;%APP_HOME%\lib\springfox-swagger-ui-2.9.2.jar;%APP_HOME%\lib\flyway-core-5.1.0.jar;%APP_HOME%\lib\postgresql-42.2.5.jar;%APP_HOME%\lib\springfox-swagger-common-2.9.2.jar;%APP_HOME%\lib\springfox-spring-web-2.9.2.jar;%APP_HOME%\lib\springfox-schema-2.9.2.jar;%APP_HOME%\lib\springfox-spi-2.9.2.jar;%APP_HOME%\lib\springfox-core-2.9.2.jar;%APP_HOME%\lib\guava-27.0-jre.jar;%APP_HOME%\lib\spring-cloud-starter-2.0.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.0.4.RELEASE.jar;%APP_HOME%\lib\hibernate-core-5.2.17.Final.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-data-jpa-2.0.9.RELEASE.jar;%APP_HOME%\lib\spring-aspects-5.0.8.RELEASE.jar;%APP_HOME%\lib\micrometer-core-1.0.6.jar;%APP_HOME%\lib\spring-security-config-5.0.7.RELEASE.jar;%APP_HOME%\lib\spring-security-web-5.0.7.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-context-support-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-plugin-metadata-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-plugin-core-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-security-core-5.0.7.RELEASE.jar;%APP_HOME%\lib\spring-context-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.0.8.RELEASE.jar;%APP_HOME%\lib\aspectjweaver-1.8.13.jar;%APP_HOME%\lib\spring-web-5.0.8.RELEASE.jar;%APP_HOME%\lib\HikariCP-2.7.9.jar;%APP_HOME%\lib\spring-orm-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.0.4.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-ribbon-2.0.2.RELEASE.jar;%APP_HOME%\lib\rxjava-reactive-streams-1.2.1.jar;%APP_HOME%\lib\spring-data-commons-2.0.9.RELEASE.jar;%APP_HOME%\lib\spring-tx-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.8.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.8.RELEASE.jar;%APP_HOME%\lib\swagger-models-1.5.20.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\jackson-core-2.9.6.jar;%APP_HOME%\lib\annotations-3.0.1.jar;%APP_HOME%\lib\commons-fileupload-1.3.3.jar;%APP_HOME%\lib\xml-path-3.0.7.jar;%APP_HOME%\lib\groovy-xml-2.4.15.jar;%APP_HOME%\lib\json-path-3.0.7.jar;%APP_HOME%\lib\groovy-json-2.4.15.jar;%APP_HOME%\lib\rest-assured-common-3.0.7.jar;%APP_HOME%\lib\groovy-2.4.15.jar;%APP_HOME%\lib\httpmime-4.5.6.jar;%APP_HOME%\lib\googleauth-1.1.5.jar;%APP_HOME%\lib\httpclient-4.5.6.jar;%APP_HOME%\lib\hamcrest-library-1.3.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\tagsoup-1.2.1.jar;%APP_HOME%\lib\swagger-annotations-1.5.20.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\applicationinsights-logging-logback-2.1.2.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.0.4.RELEASE.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\feign-slf4j-9.5.1.jar;%APP_HOME%\lib\log4j-to-slf4j-2.10.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\mapstruct-1.2.0.Final.jar;%APP_HOME%\lib\applicationinsights-web-2.1.2.jar;%APP_HOME%\lib\lombok-1.16.22.jar;%APP_HOME%\lib\failureaccess-1.0.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-2.5.2.jar;%APP_HOME%\lib\error_prone_annotations-2.2.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\snakeyaml-1.19.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.2.Final.jar;%APP_HOME%\lib\javassist-3.22.0-GA.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.3.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\HdrHistogram-2.1.10.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.32.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.32.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.32.jar;%APP_HOME%\lib\spring-cloud-context-2.0.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-commons-2.0.2.RELEASE.jar;%APP_HOME%\lib\spring-security-rsa-1.0.7.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-archaius-2.0.2.RELEASE.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\rxjava-1.3.8.jar;%APP_HOME%\lib\commons-lang3-3.7.jar;%APP_HOME%\lib\asm-5.0.4.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\spring-jcl-5.0.8.RELEASE.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\commons-io-2.2.jar;%APP_HOME%\lib\httpcore-4.4.10.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\jaxb-api-2.3.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\applicationinsights-core-2.1.2.jar;%APP_HOME%\lib\feign-java8-9.5.1.jar;%APP_HOME%\lib\feign-core-9.5.1.jar;%APP_HOME%\lib\spring-security-crypto-5.0.7.RELEASE.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.60.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\byte-buddy-1.7.11.jar;%APP_HOME%\lib\log4j-api-2.10.0.jar;%APP_HOME%\lib\bcprov-jdk15on-1.60.jar

@rem Execute rpa
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %RPA_OPTS%  -classpath "%CLASSPATH%" uk.gov.hmcts.reform.professionalapi.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable RPA_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%RPA_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
