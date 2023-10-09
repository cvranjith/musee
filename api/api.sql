
-- Generated by ORDS REST Data Services 23.2.3.r2421937
-- Schema: WKSP_MUSEE  Date: Mon Oct 09 03:16:11 2023 
--

BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'WKSP_MUSEE',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'musee',
      p_auto_rest_auth      => FALSE);
    
  ORDS.DEFINE_MODULE(
      p_module_name    => 'api',
      p_base_path      => '/api/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED',
      p_comments       => NULL);

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'api',
      p_pattern        => ':api',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''get'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api',
      p_method             => 'GET',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api',
      p_method             => 'GET',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''post'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''get'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1',
      p_method             => 'GET',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1',
      p_method             => 'GET',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''post'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1',
      p_method             => 'POST',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1',
      p_method             => 'POST',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''get'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2',
      p_method             => 'GET',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2',
      p_method             => 'GET',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''post'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2',
      p_method             => 'POST',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2',
      p_method             => 'POST',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2/:filter3',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2/:filter3',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''get'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors :=''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'GET',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'GET',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2/:filter3',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''post'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
    :cors := ''*'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'POST',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'POST',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'api',
      p_pattern        => ':api/:filter1/:filter2/:filter3',
      p_method         => 'DELETE',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
    API_HANDLER (
        ''delete'',
        :body_text, 
        :api,
        :filter1, 
        :filter2, 
        :filter3,
        :status_code);
    :ct := ''application/json'';
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'DELETE',
      p_name               => 'Access-Control-Allow-Origin',
      p_bind_variable_name => 'cors',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'api',
      p_pattern            => ':api/:filter1/:filter2/:filter3',
      p_method             => 'DELETE',
      p_name               => 'Content-Type',
      p_bind_variable_name => 'ct',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

    
        
COMMIT;

END;