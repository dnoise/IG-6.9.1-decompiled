.class final Lcom/instagram/android/feed/a/b/am;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/s;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/instagram/user/c/a;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/am;->a:Landroid/support/v4/app/s;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/am;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/instagram/android/feed/a/b/am;->c:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/am;->a:Landroid/support/v4/app/s;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/am;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/am;->c:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fx;->b(Landroid/support/v4/app/s;Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 113
    return-void
.end method
