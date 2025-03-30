#include <wiredtiger_ext.h>
#include "ds/datastructure/bplustree.h"
#include "ds/utils/logger.h"

using namespace pc::datastructure;
using namespace pc::utils;

BPlusTree tree("./");
static WT_EXTENSION_API *wt_api;

static void
my_data_source_init(WT_CONNECTION *connection)
{
    wt_api = connection->get_extension_api(connection);
}
/*! [WT_EXTENSION_API declaration] */

/*! [WT_DATA_SOURCE alter] */
static int
my_alter(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE alter] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE create] */
static int
my_create(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE create] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)uri;
    (void)config;
    LOG(log_level::info) << "Calling the create session function";

    //    {
    // #if !defined(ERROR_BAD_COMMAND)
    // #define ERROR_BAD_COMMAND 37
    // #endif
    //        /*! [WT_EXTENSION_API map_windows_error] */
    //        int posix_error = wt_api->map_windows_error(wt_api, session, ERROR_BAD_COMMAND);
    //        /*! [WT_EXTENSION_API map_windows_error] */
    //        (void)posix_error;
    //    }
    //
    //    {
    //        const char *msg = "string";
    //        /*! [WT_EXTENSION_API err_printf] */
    //        (void)wt_api->err_printf(wt_api, session, "extension error message: %s", msg);
    //        /*! [WT_EXTENSION_API err_printf] */
    //    }
    //
    //    {
    //        const char *msg = "string";
    //        /*! [WT_EXTENSION_API msg_printf] */
    //        (void)wt_api->msg_printf(wt_api, session, "extension message: %s", msg);
    //        /*! [WT_EXTENSION_API msg_printf] */
    //    }
    //
    //    {
    //        int ret = 0;
    //        /*! [WT_EXTENSION_API strerror] */
    //        (void)wt_api->err_printf(
    //          wt_api, session, "WiredTiger error return: %s", wt_api->strerror(wt_api, session, ret));
    //        /*! [WT_EXTENSION_API strerror] */
    //    }
    //
    //    {
    //        /*! [WT_EXTENSION_API scr_alloc] */
    //        void *buffer;
    //        if ((buffer = wt_api->scr_alloc(wt_api, session, 512)) == NULL) {
    //            (void)wt_api->err_printf(
    //              wt_api, session, "buffer allocation: %s", session->strerror(session, ENOMEM));
    //            return (ENOMEM);
    //        }
    //        /*! [WT_EXTENSION_API scr_alloc] */
    //
    //        /*! [WT_EXTENSION_API scr_free] */
    //        wt_api->scr_free(wt_api, session, buffer);
    //        /*! [WT_EXTENSION_API scr_free] */
    //    }

    return (0);
}

/*! [WT_DATA_SOURCE compact] */
static int
my_compact(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE compact] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE drop] */
static int
my_drop(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE drop] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

static int
data_source_cursor(void)
{
    return (0);
}

static const char *
data_source_error(int v)
{
    return (v == 0 ? "one" : "two");
}

static int
my_cursor_next(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}
static int
my_cursor_prev(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}
static int
my_cursor_reset(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}
static int
my_cursor_search(WT_CURSOR *wtcursor)
{
    //(void)wtcursor;
    // TODO: this function does not work properly
    void *result;
    LOG(log_level::info) << "Searching for key: " << *(uint64_t *)wtcursor->key.data;
    tree.read(*(uint64_t *)wtcursor->key.data, result);
    if (result == NULL)
    {
        LOG(log_level::info) << "Empty result for search";
        return 1;
    }
    memcpy(result, wtcursor->value.data, strlen(static_cast<char *>(result)));
    return (0);
}
static int
my_cursor_search_near(WT_CURSOR *wtcursor, int *exactp)
{
    /*structure size: 16 Bytes*/
    // struct bplustree_entry
    //{
    //   uint64_t key;                  // 8 Bytes
    //   char value[DEFAULT_VALUE_LEN]; // 8 Bytes
    // } __attribute__((aligned(8)));
    std::vector<struct pc::datastructure::bplustree_entry> result;
    auto ret = tree.scan(*(uint64_t *)wtcursor->key.data, *exactp, result);
    ACCESS_ONCE(result);
    return ret;
}
static int
my_cursor_insert(WT_CURSOR *wtcursor)
{
    // LOG(log_level::info) << "Calling this cursor insert function";
    WT_SESSION *session = NULL;

    /* Unused parameters */
    //(void)wtcursor;
    // LOG(log_level::info) << "Inserting into the tree for key: " << *(uint64_t*)wtcursor->key.data;
    tree.insert(*(uint64_t *)wtcursor->key.data, (char *)wtcursor->value.data);

    //{
    //    const char *key1 = NULL, *key2 = NULL;
    //    uint32_t key1_len = 0, key2_len = 0;
    //    WT_COLLATOR *collator = NULL;
    //    /*! [WT_EXTENSION collate] */
    //    WT_ITEM first, second;
    //    int cmp;

    //    first.data = key1;
    //    first.size = key1_len;
    //    second.data = key2;
    //    second.size = key2_len;

    //    int ret = wt_api->collate(wt_api, session, collator, &first, &second, &cmp);
    //    if(ret != 0) {
    //        LOG(log_level::info) << "Collate failed";
    //    }
    //    if (cmp == 0)
    //        printf("key1 collates identically to key2\n");
    //    else if (cmp < 0)
    //        printf("key1 collates less than key2\n");
    //    else
    //        printf("key1 collates greater than key2\n");
    //    /*! [WT_EXTENSION collate] */
    //}

    return (0);
}

static int
my_cursor_update(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}
static int
my_cursor_remove(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}
static int
my_cursor_bound(WT_CURSOR *wtcursor, const char *config)
{
    (void)wtcursor;
    (void)config;
    return (0);
}
static int
my_cursor_close(WT_CURSOR *wtcursor)
{
    (void)wtcursor;
    return (0);
}

/*! [WT_DATA_SOURCE open_cursor] */
typedef struct __my_cursor
{
    WT_CURSOR wtcursor; /* WiredTiger cursor, must come first */

    /*
     * Local cursor information: for example, we might want to have a reference to the extension
     * functions.
     */
    WT_EXTENSION_API *wtext; /* Extension functions */
} MY_CURSOR;

static int
my_open_cursor(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config,
               WT_CURSOR **new_cursor)
{
    LOG(log_level::info) << "The open cursor function is called";
    MY_CURSOR *cursor;
    int ret;

    /* Allocate and initialize a WiredTiger cursor. */
    if ((cursor = reinterpret_cast<MY_CURSOR *>(calloc(1, sizeof(*cursor)))) == NULL)
        return (errno);

    cursor->wtcursor.next = my_cursor_next;
    cursor->wtcursor.prev = my_cursor_prev;
    cursor->wtcursor.reset = my_cursor_reset;
    cursor->wtcursor.search = my_cursor_search;
    cursor->wtcursor.search_near = my_cursor_search_near;
    cursor->wtcursor.insert = my_cursor_insert;
    cursor->wtcursor.update = my_cursor_update;
    cursor->wtcursor.remove = my_cursor_remove;
    cursor->wtcursor.close = my_cursor_close;
    cursor->wtcursor.bound = my_cursor_bound;
    /*
     * Configure local cursor information.
     */

    /* Return combined cursor to WiredTiger. */
    *new_cursor = (WT_CURSOR *)cursor;

    /*! [WT_DATA_SOURCE open_cursor] */
    {
        (void)dsrc; /* Unused parameters */
        (void)session;
        (void)uri;
        (void)new_cursor;

        //{
        //    /*! [WT_EXTENSION_CONFIG boolean] */
        //    WT_CONFIG_ITEM v;
        //    int my_data_source_overwrite;

        //    /*
        //     * Retrieve the value of the boolean type configuration string "overwrite".
        //     */
        //    int ret = wt_api->config_get(wt_api, session, config, "overwrite", &v);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Config get failed";
        //    }
        //    my_data_source_overwrite = v.val != 0;
        //    /*! [WT_EXTENSION_CONFIG boolean] */

        //    (void)my_data_source_overwrite;
        //}

        //{
        //    /*! [WT_EXTENSION_CONFIG integer] */
        //    WT_CONFIG_ITEM v;
        //    int64_t my_data_source_page_size;

        //    /*
        //     * Retrieve the value of the integer type configuration string "page_size".
        //     */
        //    int ret = wt_api->config_get(wt_api, session, config, "page_size", &v);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Config get failed";
        //    }
        //    my_data_source_page_size = v.val;
        //    /*! [WT_EXTENSION_CONFIG integer] */

        //    (void)my_data_source_page_size;
        //}

        //{
        //    /*! [WT_EXTENSION config_get] */
        //    WT_CONFIG_ITEM v;
        //    const char *my_data_source_key;

        //    /*
        //     * Retrieve the value of the string type configuration string "key_format".
        //     */
        //    int ret = wt_api->config_get(wt_api, session, config, "key_format", &v);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Config get failed";
        //    }

        //    /*
        //     * Values returned from WT_EXTENSION_API::config in the str field are not
        //     * nul-terminated; the associated length must be used instead.
        //     */
        //    if (v.len == 1 && v.str[0] == 'r')
        //        my_data_source_key = "recno";
        //    else
        //        my_data_source_key = "bytestring";
        //    /*! [WT_EXTENSION config_get] */

        //    (void)my_data_source_key;
        //}

        //{
        //    /*! [WT_EXTENSION collator config] */
        //    WT_COLLATOR *collator;
        //    int collator_owned;
        //    /*
        //     * Configure the appropriate collator.
        //     */
        //    int ret = wt_api->collator_config(
        //      wt_api, session, "dsrc:", config, &collator, &collator_owned);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Collator config failed";
        //    }
        //    /*! [WT_EXTENSION collator config] */
        //}

        ///*! [WT_DATA_SOURCE error message] */
        ///*
        // * If an underlying function fails, log the error and then return a non-zero value.
        // */
        // if ((ret = data_source_cursor()) != 0) {
        //    (void)wt_api->err_printf(wt_api, session, "my_open_cursor: %s", data_source_error(ret));
        //    return (WT_ERROR);
        //}
        ///*! [WT_DATA_SOURCE error message] */

        //{
        //    /*! [WT_EXTENSION metadata insert] */
        //    /*
        //     * Insert a new WiredTiger metadata record.
        //     */
        //    const char *key = "datasource_uri";
        //    const char *value = "data source uri's record";

        //    int ret = wt_api->metadata_insert(wt_api, session, key, value);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Metadata insert failed failed";
        //    }
        //    /*! [WT_EXTENSION metadata insert] */
        //}

        //{
        //    /*! [WT_EXTENSION metadata remove] */
        //    /*
        //     * Remove a WiredTiger metadata record.
        //     */
        //    const char *key = "datasource_uri";

        //    int ret = wt_api->metadata_remove(wt_api, session, key);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Metadata remove failed";
        //    }
        //    /*! [WT_EXTENSION metadata remove] */
        //}

        //{
        //    /*! [WT_EXTENSION metadata search] */
        //    /*
        //     * Search for a WiredTiger metadata record.
        //     */
        //    const char *key = "datasource_uri";
        //    char *value;

        //    int ret = wt_api->metadata_search(wt_api, session, key, &value);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Metadata search failed";
        //    }
        //    printf("metadata: %s has a value of %s\n", key, value);
        //    /*! [WT_EXTENSION metadata search] */
        //}

        //{
        //    /*! [WT_EXTENSION metadata update] */
        //    /*
        //     * Update a WiredTiger metadata record (insert it if it does not yet exist, update it if
        //     * it does).
        //     */
        //    const char *key = "datasource_uri";
        //    const char *value = "data source uri's record";

        //    int ret = wt_api->metadata_update(wt_api, session, key, value);
        //    if(ret != 0) {
        //        LOG(log_level::info) << "Metadata update failed";
        //    }
        //    /*! [WT_EXTENSION metadata update] */
        //}
    }
    return (0);
}

/*! [WT_DATA_SOURCE rename] */
static int
my_rename(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, const char *newname,
          WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE rename] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)newname;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE salvage] */
static int
my_salvage(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE salvage] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE size] */
static int
my_size(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, wt_off_t *size)
/*! [WT_DATA_SOURCE size] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)size;

    return (0);
}

/*! [WT_DATA_SOURCE truncate] */
static int
my_truncate(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE truncate] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE range truncate] */
static int
my_range_truncate(WT_DATA_SOURCE *dsrc, WT_SESSION *session, WT_CURSOR *start, WT_CURSOR *stop)
/*! [WT_DATA_SOURCE range truncate] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)start;
    (void)stop;

    return (0);
}

/*! [WT_DATA_SOURCE verify] */
static int
my_verify(WT_DATA_SOURCE *dsrc, WT_SESSION *session, const char *uri, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE verify] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)uri;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE checkpoint] */
static int
my_checkpoint(WT_DATA_SOURCE *dsrc, WT_SESSION *session, WT_CONFIG_ARG *config)
/*! [WT_DATA_SOURCE checkpoint] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;
    (void)config;

    return (0);
}

/*! [WT_DATA_SOURCE terminate] */
static int
my_terminate(WT_DATA_SOURCE *dsrc, WT_SESSION *session)
/*! [WT_DATA_SOURCE terminate] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)session;

    return (0);
}

/*! [WT_DATA_SOURCE lsm_pre_merge] */
static int
my_lsm_pre_merge(WT_DATA_SOURCE *dsrc, WT_CURSOR *source, WT_CURSOR *dest)
/*! [WT_DATA_SOURCE lsm_pre_merge] */
{
    /* Unused parameters */
    (void)dsrc;
    (void)source;
    (void)dest;

    return (0);
}

static const char *home;
