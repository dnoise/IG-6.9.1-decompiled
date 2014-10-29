.class final Lcom/instagram/common/g/b/q;
.super Ljava/lang/Object;
.source "IgImageCacheUpgradeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/instagram/common/g/b/o;


# direct methods
.method constructor <init>(Lcom/instagram/common/g/b/o;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/common/g/b/q;->b:Lcom/instagram/common/g/b/o;

    iput-object p2, p0, Lcom/instagram/common/g/b/q;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lcom/instagram/common/g/b/o;->d()Ljava/lang/Class;

    .line 67
    iget-object v0, p0, Lcom/instagram/common/g/b/q;->b:Lcom/instagram/common/g/b/o;

    invoke-virtual {v0}, Lcom/instagram/common/g/b/o;->c()V

    .line 68
    iget-object v0, p0, Lcom/instagram/common/g/b/q;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "format_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/instagram/common/g/b/o;->d()Ljava/lang/Class;

    goto :goto_0
.end method
