#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

void test_validate_my_username()
{
    const char* expected_username = my_username();
    char* actual_username = malloc_username_from_conf_file();

    TEST_ASSERT_NOT_NULL_MESSAGE(expected_username, "my_username() 回傳為 NULL");
    TEST_ASSERT_NOT_NULL_MESSAGE(actual_username, "讀取 conf/username.txt 失敗");

    TEST_ASSERT_EQUAL_STRING_MESSAGE(expected_username, actual_username, "⚠️ 使用者名稱不相符，請確認你設定正確！");

    free(actual_username);
}

