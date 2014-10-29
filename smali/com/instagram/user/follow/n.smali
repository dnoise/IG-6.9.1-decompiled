.class public final Lcom/instagram/user/follow/n;
.super Ljava/lang/Object;
.source "UserFollowRequestManager.java"


# static fields
.field private static a:Lcom/instagram/user/follow/n;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/user/follow/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static a()Lcom/instagram/user/follow/n;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/instagram/user/follow/n;->a:Lcom/instagram/user/follow/n;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/instagram/user/follow/n;->b()V

    .line 29
    :cond_0
    sget-object v0, Lcom/instagram/user/follow/n;->a:Lcom/instagram/user/follow/n;

    return-object v0
.end method

.method public static a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/instagram/user/follow/o;->a:[I

    invoke-virtual {v0}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/f;->a:Lcom/instagram/user/c/f;

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    .line 64
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 93
    sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->m()V

    .line 95
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->G()V

    .line 105
    :cond_0
    :goto_0
    sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    if-eq p1, v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->H()V

    .line 108
    :cond_1
    return-void

    .line 96
    :cond_2
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/instagram/user/c/h;->c:I

    if-eq p2, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->n()V

    .line 99
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->G()V

    goto :goto_0
.end method

.method private static declared-synchronized b()V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/instagram/user/follow/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/user/follow/n;->a:Lcom/instagram/user/follow/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    monitor-exit v1

    return-void

    .line 34
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/user/follow/n;

    invoke-direct {v0}, Lcom/instagram/user/follow/n;-><init>()V

    sput-object v0, Lcom/instagram/user/follow/n;->a:Lcom/instagram/user/follow/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V

    .line 116
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/instagram/user/follow/o;->a:[I

    invoke-virtual {v0}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 132
    :pswitch_0
    sget v0, Lcom/instagram/user/c/h;->b:I

    .line 133
    sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    .line 152
    :goto_1
    invoke-static {p1, v1, v0}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V

    .line 154
    iget-object v1, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    monitor-enter v1

    .line 155
    :try_start_0
    new-instance v2, Lcom/instagram/user/follow/k;

    invoke-direct {v2, p2, p3, v0, p1}, Lcom/instagram/user/follow/k;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V

    .line 157
    iget-object v0, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v2}, Lcom/instagram/user/follow/k;->g()V

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 136
    :pswitch_1
    sget v0, Lcom/instagram/user/c/h;->a:I

    .line 137
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/f;->a:Lcom/instagram/user/c/f;

    if-ne v1, v2, :cond_1

    .line 139
    :cond_0
    sget-object v1, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    goto :goto_1

    .line 141
    :cond_1
    sget-object v1, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    goto :goto_1

    .line 145
    :pswitch_2
    sget v0, Lcom/instagram/user/c/h;->c:I

    .line 146
    sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 216
    .line 218
    sget-object v1, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    move v1, v0

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_5

    .line 221
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v3, "following"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 224
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    goto :goto_0

    .line 225
    :cond_1
    const-string v3, "outgoing_request"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 227
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_2
    const-string v3, "incoming_request"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 230
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 231
    :cond_3
    const-string v3, "is_private"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    goto :goto_0

    .line 236
    :cond_4
    const-string v3, "blocking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 238
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->c(Z)V

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V

    .line 243
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    const-string v0, "following"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v3

    .line 187
    const-string v0, "outgoing_request"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "outgoing_request"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 190
    :goto_0
    const-string v4, "incoming_request"

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "incoming_request"

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V

    .line 193
    const-string v1, "is_private"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    sget-object v1, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    .line 199
    :goto_2
    const-string v1, "blocking"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "blocking"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->c(Z)V

    .line 203
    :cond_0
    const-string v1, "direct_share_blocking"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "direct_share_blocking"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->d(Z)V

    .line 207
    :cond_1
    invoke-virtual {p0, p1, v3, v0, p3}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V

    .line 208
    return-void

    :cond_2
    move v0, v2

    .line 187
    goto :goto_0

    :cond_3
    move v1, v2

    .line 190
    goto :goto_1

    .line 196
    :cond_4
    sget-object v1, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    goto :goto_2
.end method

.method public final a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    if-eqz p3, :cond_1

    .line 254
    sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    move-object v1, v0

    .line 271
    :goto_0
    iget-object v2, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    monitor-enter v2

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/k;

    .line 273
    if-eqz v0, :cond_0

    if-ne v0, p4, :cond_3

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/instagram/user/follow/n;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V

    .line 279
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    .line 256
    sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    move-object v1, v0

    goto :goto_0

    .line 258
    :cond_2
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    move-object v1, v0

    goto :goto_0

    .line 277
    :cond_3
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
