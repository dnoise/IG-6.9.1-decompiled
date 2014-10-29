.class final Lcom/instagram/ui/f/c;
.super Ljava/lang/Object;
.source "PopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/f/b;


# direct methods
.method constructor <init>(Lcom/instagram/ui/f/b;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/ui/f/c;->a:Lcom/instagram/ui/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter "event"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/instagram/ui/f/c;->a:Lcom/instagram/ui/f/b;

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
