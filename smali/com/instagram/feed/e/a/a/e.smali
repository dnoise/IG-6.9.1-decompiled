.class final Lcom/instagram/feed/e/a/a/e;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/g;

.field final synthetic b:Lcom/instagram/user/d/a;

.field final synthetic c:I

.field final synthetic d:Lcom/instagram/feed/e/a/a/h;

.field final synthetic e:Lcom/instagram/feed/e/a/a/g;

.field final synthetic f:Landroid/support/v4/app/an;

.field final synthetic g:Lcom/instagram/feed/f/c;

.field final synthetic h:Lcom/instagram/feed/e/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;ILcom/instagram/feed/e/a/a/h;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/g;

    iput-object p2, p0, Lcom/instagram/feed/e/a/a/e;->b:Lcom/instagram/user/d/a;

    iput p3, p0, Lcom/instagram/feed/e/a/a/e;->c:I

    iput-object p4, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;

    iput-object p5, p0, Lcom/instagram/feed/e/a/a/e;->e:Lcom/instagram/feed/e/a/a/g;

    iput-object p6, p0, Lcom/instagram/feed/e/a/a/e;->f:Landroid/support/v4/app/an;

    iput-object p7, p0, Lcom/instagram/feed/e/a/a/e;->g:Lcom/instagram/feed/f/c;

    iput-object p8, p0, Lcom/instagram/feed/e/a/a/e;->h:Lcom/instagram/feed/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/g;

    iget-object v1, p0, Lcom/instagram/feed/e/a/a/e;->b:Lcom/instagram/user/d/a;

    iget v2, p0, Lcom/instagram/feed/e/a/a/e;->c:I

    invoke-static {v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;I)V

    .line 155
    iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;

    invoke-static {v0}, Lcom/instagram/feed/e/a/a/h;->c(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/g;

    iget-object v1, p0, Lcom/instagram/feed/e/a/a/e;->e:Lcom/instagram/feed/e/a/a/g;

    iget-object v2, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;

    iget-object v3, p0, Lcom/instagram/feed/e/a/a/e;->f:Landroid/support/v4/app/an;

    iget-object v4, p0, Lcom/instagram/feed/e/a/a/e;->g:Lcom/instagram/feed/f/c;

    iget v5, p0, Lcom/instagram/feed/e/a/a/e;->c:I

    iget-object v6, p0, Lcom/instagram/feed/e/a/a/e;->h:Lcom/instagram/feed/e/a;

    invoke-static/range {v0 .. v6}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-void
.end method
