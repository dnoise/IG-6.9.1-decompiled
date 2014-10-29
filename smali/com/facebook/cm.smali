.class public abstract Lcom/facebook/cm;
.super Ljava/lang/Object;
.source "TokenCachingStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/high16 v3, -0x8000

    const/4 v0, 0x0

    .line 363
    if-nez p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 368
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 372
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Z
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 133
    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/os/Bundle;)Lcom/facebook/b;
    .locals 1
    .parameter

    .prologue
    .line 279
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/b;

    .line 284
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 284
    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/b;->b:Lcom/facebook/b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/b;->e:Lcom/facebook/b;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/os/Bundle;
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract b()V
.end method
