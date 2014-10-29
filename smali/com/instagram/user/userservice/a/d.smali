.class public final Lcom/instagram/user/userservice/a/d;
.super Lcom/instagram/user/userservice/a;
.source "AutoCompleteUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/user/userservice/a",
        "<",
        "Lcom/instagram/user/userservice/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/instagram/common/y/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "autocomplete"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    sput-object v0, Lcom/instagram/user/userservice/a/d;->a:Lcom/instagram/common/y/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/user/userservice/a;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic e()Lcom/instagram/common/y/c/d;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/instagram/user/userservice/a/d;->a:Lcom/instagram/common/y/c/d;

    return-object v0
.end method

.method private static f()Lcom/instagram/user/userservice/a/a;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/instagram/user/userservice/a/a;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p1}, Lcom/instagram/user/userservice/a/h;->a(Lcom/instagram/user/c/a;)V

    .line 59
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/f/d/a;->a(Lcom/instagram/user/c/a;)V

    .line 60
    return-void
.end method

.method protected final a(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/a/d;->a(Lcom/instagram/user/c/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_0
    invoke-static {}, Lcom/instagram/user/userservice/a/h;->a()V

    .line 68
    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->c()V

    .line 69
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "EXPIRES_DATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/a/d;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method protected final c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 73
    const-string v0, "autoCompleteUserStoreV2"

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Lcom/instagram/api/k/a/a;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/user/userservice/a/d;->f()Lcom/instagram/user/userservice/a/a;

    move-result-object v0

    return-object v0
.end method
