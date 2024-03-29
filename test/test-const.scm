;;;
;;; Test groonga
;;;

(use gauche.interactive)
(use gauche.sequence)
(use gauche.collection)
(use gauche.test)

(use groonga)

(test-record-file "test.record")

(test-module 'groonga)
(test-start "const")

;; The following is a dummy test code.
;; Replace it for your tests.

;;
;; 
;;
(test-section "groonga constant")

(test* "GRN_ID_NIL" 0 GRN_ID_NIL)
(test* "GRN_ID_MAX" 1073741823 GRN_ID_MAX)

(test* "GRN_TRUE" 1 GRN_TRUE)
(test* "GRN_FALSE" 0 GRN_FALSE)

;;;
;;; grn_rc
;;;
(test-section "grn_rc")

(test* "GRN_SUCCESS" 0 GRN_SUCCESS)
(test* "GRN_END_OF_DATA" 1 GRN_END_OF_DATA)

(define grn-rc-list
  `((GRN_UNKNOWN_ERROR ,GRN_UNKNOWN_ERROR)
    (GRN_OPERATION_NOT_PERMITTED ,GRN_OPERATION_NOT_PERMITTED)
    (GRN_NO_SUCH_FILE_OR_DIRECTORY ,GRN_NO_SUCH_FILE_OR_DIRECTORY)
    (GRN_NO_SUCH_PROCESS ,GRN_NO_SUCH_PROCESS)
    (GRN_INTERRUPTED_FUNCTION_CALL ,GRN_INTERRUPTED_FUNCTION_CALL)
    (GRN_INPUT_OUTPUT_ERROR ,GRN_INPUT_OUTPUT_ERROR)
    (GRN_NO_SUCH_DEVICE_OR_ADDRESS ,GRN_NO_SUCH_DEVICE_OR_ADDRESS)
    (GRN_ARG_LIST_TOO_LONG ,GRN_ARG_LIST_TOO_LONG)
    (GRN_EXEC_FORMAT_ERROR ,GRN_EXEC_FORMAT_ERROR)
    (GRN_BAD_FILE_DESCRIPTOR ,GRN_BAD_FILE_DESCRIPTOR)
    (GRN_NO_CHILD_PROCESSES ,GRN_NO_CHILD_PROCESSES)
    (GRN_RESOURCE_TEMPORARILY_UNAVAILABLE ,GRN_RESOURCE_TEMPORARILY_UNAVAILABLE)
    (GRN_NOT_ENOUGH_SPACE ,GRN_NOT_ENOUGH_SPACE)
    (GRN_PERMISSION_DENIED ,GRN_PERMISSION_DENIED)
    (GRN_BAD_ADDRESS ,GRN_BAD_ADDRESS)
    (GRN_RESOURCE_BUSY ,GRN_RESOURCE_BUSY)
    (GRN_FILE_EXISTS ,GRN_FILE_EXISTS)
    (GRN_IMPROPER_LINK ,GRN_IMPROPER_LINK)
    (GRN_NO_SUCH_DEVICE ,GRN_NO_SUCH_DEVICE)
    (GRN_NOT_A_DIRECTORY ,GRN_NOT_A_DIRECTORY)
    (GRN_IS_A_DIRECTORY ,GRN_IS_A_DIRECTORY)
    (GRN_INVALID_ARGUMENT ,GRN_INVALID_ARGUMENT)
    (GRN_TOO_MANY_OPEN_FILES_IN_SYSTEM ,GRN_TOO_MANY_OPEN_FILES_IN_SYSTEM)
    (GRN_TOO_MANY_OPEN_FILES ,GRN_TOO_MANY_OPEN_FILES)
    (GRN_INAPPROPRIATE_I_O_CONTROL_OPERATION ,GRN_INAPPROPRIATE_I_O_CONTROL_OPERATION)
    (GRN_FILE_TOO_LARGE ,GRN_FILE_TOO_LARGE)
    (GRN_NO_SPACE_LEFT_ON_DEVICE ,GRN_NO_SPACE_LEFT_ON_DEVICE)
    (GRN_INVALID_SEEK ,GRN_INVALID_SEEK)
    (GRN_READ_ONLY_FILE_SYSTEM ,GRN_READ_ONLY_FILE_SYSTEM)
    (GRN_TOO_MANY_LINKS ,GRN_TOO_MANY_LINKS)
    (GRN_BROKEN_PIPE ,GRN_BROKEN_PIPE)
    (GRN_DOMAIN_ERROR ,GRN_DOMAIN_ERROR)
    (GRN_RESULT_TOO_LARGE ,GRN_RESULT_TOO_LARGE)
    (GRN_RESOURCE_DEADLOCK_AVOIDED ,GRN_RESOURCE_DEADLOCK_AVOIDED)
    (GRN_NO_MEMORY_AVAILABLE ,GRN_NO_MEMORY_AVAILABLE)
    (GRN_FILENAME_TOO_LONG ,GRN_FILENAME_TOO_LONG)
    (GRN_NO_LOCKS_AVAILABLE ,GRN_NO_LOCKS_AVAILABLE)
    (GRN_FUNCTION_NOT_IMPLEMENTED ,GRN_FUNCTION_NOT_IMPLEMENTED)
    (GRN_DIRECTORY_NOT_EMPTY ,GRN_DIRECTORY_NOT_EMPTY)
    (GRN_ILLEGAL_BYTE_SEQUENCE ,GRN_ILLEGAL_BYTE_SEQUENCE)
    (GRN_SOCKET_NOT_INITIALIZED ,GRN_SOCKET_NOT_INITIALIZED)
    (GRN_OPERATION_WOULD_BLOCK ,GRN_OPERATION_WOULD_BLOCK)
    (GRN_ADDRESS_IS_NOT_AVAILABLE ,GRN_ADDRESS_IS_NOT_AVAILABLE)
    (GRN_NETWORK_IS_DOWN ,GRN_NETWORK_IS_DOWN)
    (GRN_NO_BUFFER ,GRN_NO_BUFFER)
    (GRN_SOCKET_IS_ALREADY_CONNECTED ,GRN_SOCKET_IS_ALREADY_CONNECTED)
    (GRN_SOCKET_IS_NOT_CONNECTED ,GRN_SOCKET_IS_NOT_CONNECTED)
    (GRN_SOCKET_IS_ALREADY_SHUTDOWNED ,GRN_SOCKET_IS_ALREADY_SHUTDOWNED)
    (GRN_OPERATION_TIMEOUT ,GRN_OPERATION_TIMEOUT)
    (GRN_CONNECTION_REFUSED ,GRN_CONNECTION_REFUSED)
    (GRN_RANGE_ERROR ,GRN_RANGE_ERROR)
    (GRN_TOKENIZER_ERROR ,GRN_TOKENIZER_ERROR)
    (GRN_FILE_CORRUPT ,GRN_FILE_CORRUPT)
    (GRN_INVALID_FORMAT ,GRN_INVALID_FORMAT)
    (GRN_OBJECT_CORRUPT ,GRN_OBJECT_CORRUPT)
    (GRN_TOO_MANY_SYMBOLIC_LINKS ,GRN_TOO_MANY_SYMBOLIC_LINKS)
    (GRN_NOT_SOCKET ,GRN_NOT_SOCKET)
    (GRN_OPERATION_NOT_SUPPORTED ,GRN_OPERATION_NOT_SUPPORTED)
    (GRN_ADDRESS_IS_IN_USE ,GRN_ADDRESS_IS_IN_USE)
    (GRN_ZLIB_ERROR ,GRN_ZLIB_ERROR)
    (GRN_LZO_ERROR ,GRN_LZO_ERROR)
    (GRN_STACK_OVER_FLOW ,GRN_STACK_OVER_FLOW)
    (GRN_SYNTAX_ERROR ,GRN_SYNTAX_ERROR)
    (GRN_RETRY_MAX ,GRN_RETRY_MAX)
    (GRN_INCOMPATIBLE_FILE_FORMAT ,GRN_INCOMPATIBLE_FILE_FORMAT)
    (GRN_UPDATE_NOT_ALLOWED ,GRN_UPDATE_NOT_ALLOWED)
    (GRN_TOO_SMALL_OFFSET ,GRN_TOO_SMALL_OFFSET)
    (GRN_TOO_LARGE_OFFSET ,GRN_TOO_LARGE_OFFSET)
    (GRN_TOO_SMALL_LIMIT ,GRN_TOO_SMALL_LIMIT)
    (GRN_CAS_ERROR ,GRN_CAS_ERROR)
    (GRN_UNSUPPORTED_COMMAND_VERSION ,GRN_UNSUPPORTED_COMMAND_VERSION)))

(define (mktest-proc index var val)
  (let* ([expected (+ (- index) -1)])
    (test* (format #f "grn_rc enum value of ~a" var) expected val)))

(define (mktest arg)
  (map-with-index
   (^ (index arg) (mktest-proc index (car arg) (cadr arg))) arg))

(mktest grn-rc-list)

;;;
;;; grn_encoding
;;;
(test-section "grn_encoding")
(define grn-encoding-list
  `((GRN_ENC_DEFAULT ,GRN_ENC_DEFAULT)
    (GRN_ENC_NONE ,GRN_ENC_NONE)
    (GRN_ENC_EUC_JP ,GRN_ENC_EUC_JP)
    (GRN_ENC_UTF8 ,GRN_ENC_UTF8)
    (GRN_ENC_SJIS ,GRN_ENC_SJIS)
    (GRN_ENC_LATIN1 ,GRN_ENC_LATIN1)
    (GRN_ENC_KOI8R ,GRN_ENC_KOI8R)))

(define (mktest-proc index var val)
  (let* ([expected index])
    (test* (format #f "grn_encoding enum value of ~a" var) expected val)))

(mktest grn-encoding-list)

;;;
;;; grn_command_version
;;;
(test-section "grn_command_version")
(define grn-command-version
  `((GRN_COMMAND_VERSION_DEFAULT ,GRN_COMMAND_VERSION_DEFAULT)
    (GRN_COMMAND_VERSION_1 ,GRN_COMMAND_VERSION_1)
    (GRN_COMMAND_VERSION_2 ,GRN_COMMAND_VERSION_2)))

(mktest grn-command-version)

;;;
;;; grn_command_version alias
;;;
(test-section "grn_command_version alias")
(define grn-command-version-alias
  `((GRN_COMMAND_VERSION_MIN ,GRN_COMMAND_VERSION_MIN ,GRN_COMMAND_VERSION_1)
    (GRN_COMMAND_VERSION_STABLE ,GRN_COMMAND_VERSION_STABLE ,GRN_COMMAND_VERSION_1)
    (GRN_COMMAND_VERSION_MAX ,GRN_COMMAND_VERSION_MAX ,GRN_COMMAND_VERSION_2)))

(define (mktest-proc index arg)
  (let* ([var (~ arg 0)]
	 [val (~ arg 1)]
	 [expected (~ arg 2)])
    (test* (format #f "grn_command_version alias value of ~a" var) expected val)))

(define (mktest arg)
  (map-with-index
   (^ (index arg) (mktest-proc index arg)) arg))
(mktest grn-command-version-alias)

;;;
;;; grn_log_level
;;;
(test-section "grn_log_level")
(define grn-log-level
  `((GRN_LOG_NONE ,GRN_LOG_NONE)
    (GRN_LOG_EMERG ,GRN_LOG_EMERG)
    (GRN_LOG_ALERT ,GRN_LOG_ALERT)
    (GRN_LOG_CRIT ,GRN_LOG_CRIT)
    (GRN_LOG_ERROR ,GRN_LOG_ERROR)
    (GRN_LOG_WARNING ,GRN_LOG_WARNING)
    (GRN_LOG_NOTICE ,GRN_LOG_NOTICE)
    (GRN_LOG_INFO ,GRN_LOG_INFO)
    (GRN_LOG_DEBUG ,GRN_LOG_DEBUG)
    (GRN_LOG_DUMP ,GRN_LOG_DUMP)))
(define (mktest-proc index arg)
  (let* ([var (~ arg 0)]
	 [val (~ arg 1)]
	 [expected index])
    (test* (format #f "grn_log_level value of ~a" var) expected val)))

(define (mktest arg)
  (map-with-index
   (^ (index arg) (mktest-proc index arg)) arg))
(mktest grn-log-level)

;;;
;;; GRN_CTX_
;;;
(test-section "grn_ctx_*")

(define grn-ctx
  `((GRN_CTX_MSGSIZE ,GRN_CTX_MSGSIZE 128)
    (GRN_CTX_FIN ,GRN_CTX_FIN 255)
    (GRN_CTX_USE_QL ,GRN_CTX_USE_QL 3)
    (GRN_CTX_BATCH_MODE ,GRN_CTX_BATCH_MODE 4)
    (GRN_CTX_PER_DB ,GRN_CTX_PER_DB 8)))

(define (mktest-proc index arg)
  (let* ([var (~ arg 0)]
	 [val (~ arg 1)]
	 [expected (~ arg 2)])
    (test* (format #f "grn_command_version alias value of ~a" var) expected val)))

(define (mktest arg)
  (map-with-index
   (^ (index arg) (mktest-proc index arg)) arg))
(mktest grn-ctx)

(test-end)
