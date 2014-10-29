.class final Lcom/instagram/share/b/f;
.super Lcom/instagram/common/c/a;
.source "FacebookAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/instagram/common/c/a;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/instagram/share/b/f;->a:Landroid/content/Context;

    .line 261
    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 265
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/instagram/share/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/b;->a(Landroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_0
    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/l/a/b;->c(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    sget-object v2, Lcom/instagram/p/b;->aB:Lcom/instagram/p/b;

    invoke-virtual {v2}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "attribution_id"

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 284
    :cond_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 272
    const-string v2, "FacebookAccount"

    const-string v3, "error fetching attributionId"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const-string v2, "facebook-sdk"

    const-string v3, "failed to fetch attributionId"

    invoke-static {v2, v3, v0}, Lcom/instagram/common/i/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/instagram/share/b/f;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
