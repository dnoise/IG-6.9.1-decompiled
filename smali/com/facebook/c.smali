.class final Lcom/facebook/c;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/facebook/j;

.field transient c:Landroid/content/Context;

.field transient d:Lcom/facebook/u;

.field transient e:Lcom/facebook/r;

.field transient f:Lcom/facebook/l;

.field transient g:Z

.field h:Lcom/facebook/k;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/c;->j()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/bc;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 368
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/facebook/bc;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/c;->i()V

    return-void
.end method

.method private b(Lcom/facebook/k;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/k;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :cond_3
    iput-object p1, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    .line 120
    invoke-direct {p0, p1}, Lcom/facebook/c;->c(Lcom/facebook/k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/c;->b()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/bc;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 375
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/facebook/bc;

    const-string v2, "me"

    sget-object v4, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    return-object v0
.end method

.method private c(Lcom/facebook/k;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/k;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p1}, Lcom/facebook/k;->c()Lcom/facebook/cg;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/facebook/cg;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/facebook/k;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/facebook/m;

    invoke-direct {v2, p0}, Lcom/facebook/m;-><init>(Lcom/facebook/c;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Lcom/facebook/p;

    invoke-direct {v2, p0}, Lcom/facebook/p;-><init>(Lcom/facebook/c;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    new-instance v2, Lcom/facebook/q;

    invoke-direct {v2, p0}, Lcom/facebook/q;-><init>(Lcom/facebook/c;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/cg;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    new-instance v1, Lcom/facebook/v;

    invoke-direct {v1, p0}, Lcom/facebook/v;-><init>(Lcom/facebook/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    return-object v0
.end method

.method private c(Lcom/facebook/s;)V
    .locals 2
    .parameter

    .prologue
    .line 276
    iget-object v0, p1, Lcom/facebook/s;->b:Lcom/facebook/a;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/c;->d(Lcom/facebook/s;)Lcom/facebook/bl;

    move-result-object v0

    .line 282
    invoke-direct {p0}, Lcom/facebook/c;->i()V

    .line 284
    invoke-virtual {v0}, Lcom/facebook/bl;->h()Lcom/facebook/bk;

    .line 285
    return-void
.end method

.method private d(Lcom/facebook/s;)Lcom/facebook/bl;
    .locals 8
    .parameter

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v2, p1, Lcom/facebook/s;->b:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/facebook/f;

    invoke-direct {v3, p0, v0}, Lcom/facebook/f;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;)V

    .line 309
    iget-object v4, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v4}, Lcom/facebook/k;->h()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-static {v4}, Lcom/facebook/c;->c(Ljava/lang/String;)Lcom/facebook/bc;

    move-result-object v5

    .line 311
    invoke-virtual {v5, v3}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V

    .line 313
    invoke-static {v2}, Lcom/facebook/c;->c(Ljava/lang/String;)Lcom/facebook/bc;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v3}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V

    .line 316
    invoke-static {v4}, Lcom/facebook/c;->b(Ljava/lang/String;)Lcom/facebook/bc;

    move-result-object v3

    .line 317
    new-instance v4, Lcom/facebook/g;

    invoke-direct {v4, p0, v1}, Lcom/facebook/g;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V

    .line 336
    new-instance v4, Lcom/facebook/bl;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/facebook/bc;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-direct {v4, v6}, Lcom/facebook/bl;-><init>([Lcom/facebook/bc;)V

    .line 338
    iget-object v2, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v2}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/facebook/bl;->a(Ljava/lang/String;)V

    .line 339
    new-instance v2, Lcom/facebook/h;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/h;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;Lcom/facebook/s;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2}, Lcom/facebook/bl;->a(Lcom/facebook/bm;)V

    .line 364
    return-object v4
.end method

.method private d()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    invoke-virtual {v0}, Lcom/facebook/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    invoke-virtual {v0}, Lcom/facebook/j;->c()V

    .line 131
    invoke-direct {p0}, Lcom/facebook/c;->h()Z

    .line 133
    :cond_2
    return-void
.end method

.method private e(Lcom/facebook/s;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/c;->e:Lcom/facebook/r;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/facebook/c;->e:Lcom/facebook/r;

    invoke-interface {v0, p1}, Lcom/facebook/r;->a(Lcom/facebook/s;)V

    .line 385
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-boolean v1, p0, Lcom/facebook/c;->g:Z

    if-eqz v1, :cond_0

    .line 186
    :goto_0
    return v0

    .line 176
    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v1}, Lcom/facebook/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/c;->c:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/facebook/c;->c:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/c;->g:Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "Login attempt failed."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V

    .line 208
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    invoke-virtual {v0}, Lcom/facebook/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    iget-object v1, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0, v1}, Lcom/facebook/j;->a(Lcom/facebook/k;)Z

    move-result v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;

    invoke-interface {v0}, Lcom/facebook/l;->a()V

    .line 391
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;

    invoke-interface {v0}, Lcom/facebook/l;->b()V

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    invoke-virtual {v0}, Lcom/facebook/j;->c()V

    .line 143
    :cond_0
    return-void
.end method

.method final a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/c;->c:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/facebook/d;

    invoke-direct {v0, p0, p1}, Lcom/facebook/d;-><init>(Lcom/facebook/c;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;

    .line 96
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/c;->c:Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;

    .line 78
    return-void
.end method

.method final a(Lcom/facebook/k;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/facebook/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/facebook/c;->d()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/k;)V

    goto :goto_0
.end method

.method final a(Lcom/facebook/l;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/c;->f:Lcom/facebook/l;

    .line 249
    return-void
.end method

.method final a(Lcom/facebook/r;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/c;->e:Lcom/facebook/r;

    .line 241
    return-void
.end method

.method final a(Lcom/facebook/s;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p1, Lcom/facebook/s;->b:Lcom/facebook/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0}, Lcom/facebook/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/facebook/c;->c(Lcom/facebook/s;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/s;)V

    goto :goto_0
.end method

.method final a(IILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0}, Lcom/facebook/k;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/j;->a(ILandroid/content/Intent;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 190
    :cond_0
    iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/j;

    iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    .line 193
    invoke-direct {p0}, Lcom/facebook/c;->h()Z

    move-result v0

    .line 195
    if-eqz v0, :cond_0

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/facebook/c;->g()V

    goto :goto_0
.end method

.method final b(Lcom/facebook/s;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;

    .line 229
    iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;

    .line 230
    iput-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    .line 232
    invoke-direct {p0, p1}, Lcom/facebook/c;->e(Lcom/facebook/s;)V

    .line 233
    return-void
.end method

.method final c()Lcom/facebook/u;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;

    .line 268
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Lcom/facebook/e;

    invoke-direct {v0, p0}, Lcom/facebook/e;-><init>(Lcom/facebook/c;)V

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
