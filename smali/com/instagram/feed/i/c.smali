.class final Lcom/instagram/feed/i/c;
.super Lcom/instagram/ui/widget/base/a;
.source "CameraNuxHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/i/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/instagram/feed/i/c;->a:Lcom/instagram/feed/i/a;

    invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/instagram/feed/i/a;->c()Z

    .line 94
    iget-object v0, p0, Lcom/instagram/feed/i/c;->a:Lcom/instagram/feed/i/a;

    invoke-static {v0}, Lcom/instagram/feed/i/a;->b(Lcom/instagram/feed/i/a;)V

    .line 95
    return-void
.end method
