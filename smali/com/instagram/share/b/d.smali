.class final Lcom/instagram/share/b/d;
.super Lcom/instagram/common/a/a/j;
.source "FacebookAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/share/b/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/share/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/instagram/share/b/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/instagram/share/b/a;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    check-cast p1, Lcom/instagram/share/b/l;

    invoke-static {p1}, Lcom/instagram/share/b/d;->a(Lcom/instagram/share/b/l;)V

    return-void
.end method
