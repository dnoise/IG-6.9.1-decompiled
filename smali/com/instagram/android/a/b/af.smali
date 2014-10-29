.class final Lcom/instagram/android/a/b/af;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/s;

.field final synthetic b:Lcom/instagram/user/d/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/instagram/android/a/b/af;->a:Landroid/support/v4/app/s;

    iput-object p2, p0, Lcom/instagram/android/a/b/af;->b:Lcom/instagram/user/d/a;

    iput p3, p0, Lcom/instagram/android/a/b/af;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/a/b/af;->a:Landroid/support/v4/app/s;

    iget-object v0, p0, Lcom/instagram/android/a/b/af;->b:Lcom/instagram/user/d/a;

    invoke-virtual {v0}, Lcom/instagram/user/d/a;->f()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/instagram/android/a/b/af;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/instagram/o/f/e;->c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 134
    return-void
.end method
