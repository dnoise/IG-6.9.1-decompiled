.class public Lcom/instagram/common/g/b/o;
.super Ljava/lang/Object;
.source "IgImageCacheUpgradeHelper.java"

# interfaces
.implements Lcom/instagram/common/p/b/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/common/g/b/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/instagram/common/g/b/o;

    sput-object v0, Lcom/instagram/common/g/b/o;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/instagram/common/g/b/o;->b:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/g/b/o;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/instagram/common/g/b/o;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/instagram/common/g/b/o;->b:Landroid/content/Context;

    const-string v1, "image_cache_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string v1, "format_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/g/b/q;

    invoke-direct {v2, p0, v0}, Lcom/instagram/common/g/b/q;-><init>(Lcom/instagram/common/g/b/o;Landroid/content/SharedPreferences;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/instagram/common/g/b/o;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/common/g/b/o;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/instagram/common/g/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Lcom/instagram/common/g/b/p;

    invoke-direct {v2, p0}, Lcom/instagram/common/g/b/p;-><init>(Lcom/instagram/common/g/b/o;)V

    .line 50
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
