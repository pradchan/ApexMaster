<<<<<<< HEAD
--------------------------------------------------------
--  File created - Friday-June-10-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure JL_PUSHOVER_MESSAGE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JULES"."JL_PUSHOVER_MESSAGE" (
        p_title   in varchar2,
        p_message in varchar2,
        p_sound   in varchar2 default 'bugle' )
    is
        l_clob  clob;
        l_url   varchar2(32000);
        l_token varchar2(100);
        l_user  varchar2(100);
       begin
        --
        -- these not used currently v2.1
        --
        l_token := 'abMWr23QPZiXTWPvxDbGCzQcdSFp4Q';
        l_user := 'u9Tm4UyBgai3PCwyrPwgFWuz12TXYU';
        --
        l_url := 'https://api.pushover.net/1/messages.json?token=' || l_token || '&user=u9Tm4UyBgai3PCwyrPwgFWuz12TXYU';
        l_url := l_url || '&title='   || replace( p_title, ' ', '%20' );
        l_url := l_url || '&message=' || replace( p_message, ' ', '%20' );
        l_url := l_url || '&sound='   || p_sound;
        l_clob := apex_web_service.make_rest_request( p_url => l_url, p_http_method => 'POST');
    end jl_pushover_message;

/
=======
--------------------------------------------------------
--  File created - Friday-June-10-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure JL_PUSHOVER_MESSAGE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JULES"."JL_PUSHOVER_MESSAGE" (
        p_title   in varchar2,
        p_message in varchar2,
        p_sound   in varchar2 default 'bugle' )
    is
        l_clob  clob;
        l_url   varchar2(32000);
        l_token varchar2(100);
        l_user  varchar2(100);
       begin
        --
        -- these not used currently v2.1
        --
        l_token := 'abMWr23QPZiXTWPvxDbGCzQcdSFp4Q';
        l_user := 'u9Tm4UyBgai3PCwyrPwgFWuz12TXYU';
        --
        l_url := 'https://api.pushover.net/1/messages.json?token=' || l_token || '&user=u9Tm4UyBgai3PCwyrPwgFWuz12TXYU';
        l_url := l_url || '&title='   || replace( p_title, ' ', '%20' );
        l_url := l_url || '&message=' || replace( p_message, ' ', '%20' );
        l_url := l_url || '&sound='   || p_sound;
        l_clob := apex_web_service.make_rest_request( p_url => l_url, p_http_method => 'POST');
    end jl_pushover_message;

/
>>>>>>> v2
