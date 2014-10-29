.class public Lcom/instagram/android/h/d;
.super Ljava/lang/Object;
.source "RealtimeMediaManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/instagram/android/h/d;

    sput-object v0, Lcom/instagram/android/h/d;->a:Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/instagram/android/h/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/instagram/android/h/d;->d()V

    .line 38
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v1

    .line 151
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->c(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    .line 152
    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/h/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/d/l;->a(J)V

    .line 260
    invoke-static {}, Lcom/instagram/android/h/d;->c()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.INBOX_SHARE_COUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 279
    return-void
.end method

.method private b(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lcom/instagram/android/h/d;->d(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p1}, Lcom/instagram/android/h/d;->c(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "Add operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v1, "mediaId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 286
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/instagram/android/h/d;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.UPDATE_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 297
    return-void
.end method

.method private static c(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 76
    :try_start_0
    sget-object v0, Lcom/instagram/android/h/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 79
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/ad;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    const-string v1, "mediaId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 292
    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.REFRESH_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 302
    return-void
.end method

.method private static d(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 5
    .parameter

    .prologue
    .line 91
    const-string v0, "/direct_share/:media_id/comments"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string v0, "Add comment operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    sget-object v1, Lcom/instagram/android/h/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 103
    invoke-static {v1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    move-result-object v1

    .line 104
    const-string v2, "media_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->a(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p1}, Lcom/instagram/android/h/d;->g(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "direct_share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/instagram/android/h/d;->f(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "Remove operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    const-string v0, "/direct_share/:media_id"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    const-string v0, "Remove DS operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v1, "media_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/h/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static g(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    const-string v0, "/direct_share/:media_id/comments/:comment_id"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 158
    if-nez v1, :cond_0

    .line 159
    const-string v0, "Remove comment operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "comment_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "last_comment_at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/instagram/android/h/d;->j(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p1}, Lcom/instagram/android/h/d;->i(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v1, "/direct_share/inbox/new_shares"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-static {p1}, Lcom/instagram/android/h/d;->k(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 184
    :cond_2
    const-string v0, "Replace operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static i(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 5
    .parameter

    .prologue
    .line 191
    const-string v0, "/direct_share/:media_id/recipients/:user_id/:action"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 193
    if-nez v1, :cond_0

    .line 194
    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "action"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-nez v0, :cond_1

    .line 201
    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    const-string v2, "has_seen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    sget v0, Lcom/instagram/model/b/c;->a:I

    move v2, v0

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 220
    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "user_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/h/d;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v2, "has_liked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    sget v0, Lcom/instagram/model/b/c;->b:I

    move v2, v0

    goto :goto_1

    .line 211
    :cond_3
    const-string v2, "has_commented"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    sget v0, Lcom/instagram/model/b/c;->c:I

    move v2, v0

    goto :goto_1

    .line 214
    :cond_4
    const-string v0, "Replace recipient status operation received an unrecognized path"

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 4
    .parameter

    .prologue
    .line 240
    const-string v0, "/direct_share/:media_id/last_comment_at"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/realtimeclient/EventRouter;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 242
    if-nez v1, :cond_0

    .line 243
    const-string v0, "Replace last activity operation received an unrecognized path"

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/h/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcom/instagram/android/h/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 249
    const-string v0, "media_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/instagram/android/h/d;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static k(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 5
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    :try_start_0
    sget-object v0, Lcom/instagram/android/h/d;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/f/c;->a(IJ)V

    .line 270
    invoke-static {}, Lcom/instagram/android/h/d;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "realtime_media_manager"

    const-string v2, "IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/realtimeclient/RealtimeOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/instagram/android/h/e;->a:[I

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    invoke-virtual {v1}, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/instagram/android/h/d;->a:Ljava/lang/Class;

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    .line 55
    :cond_0
    return-void

    .line 43
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/instagram/android/h/d;->b(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/instagram/android/h/d;->e(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/instagram/android/h/d;->h(Lcom/instagram/realtimeclient/RealtimeOperation;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
