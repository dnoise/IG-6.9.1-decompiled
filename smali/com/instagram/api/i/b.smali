.class public final Lcom/instagram/api/i/b;
.super Ljava/lang/Object;
.source "RequestSigningUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/api/i/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/common/a/c/b;
    .locals 6
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    .line 38
    const-string v1, "signed_body"

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/instagram/api/i/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "ig_sig_key_version"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    const-string v0, "ig_sig_key_version"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/common/a/c/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/instagram/api/i/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "ig_sig"

    invoke-virtual {p0, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static b(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;
    .locals 4
    .parameter

    .prologue
    .line 64
    new-instance v2, Lcom/instagram/api/b/a;

    invoke-direct {v2}, Lcom/instagram/api/b/a;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/instagram/common/a/c/b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v2}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/i/b;->a(Ljava/lang/String;)Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/instagram/common/a/c/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/util/Map;)V

    .line 74
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/strings/StringBridge;->getSignatureString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
