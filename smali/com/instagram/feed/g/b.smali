.class public final Lcom/instagram/feed/g/b;
.super Ljava/lang/Object;
.source "SponsoredHidePreferences.java"


# static fields
.field private static a:Lcom/instagram/feed/g/b;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "starredHidePreferences"

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/g/b;->b:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public static a()Lcom/instagram/feed/g/b;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/instagram/feed/g/b;->a:Lcom/instagram/feed/g/b;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/instagram/feed/g/b;

    invoke-direct {v0}, Lcom/instagram/feed/g/b;-><init>()V

    sput-object v0, Lcom/instagram/feed/g/b;->a:Lcom/instagram/feed/g/b;

    .line 21
    :cond_0
    sget-object v0, Lcom/instagram/feed/g/b;->a:Lcom/instagram/feed/g/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)Z
    .locals 3
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/feed/g/b;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/feed/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method
