.class final Lcom/instagram/ui/f/d;
.super Ljava/lang/Object;
.source "PopupWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/ui/f/b;


# direct methods
.method constructor <init>(Lcom/instagram/ui/f/b;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/instagram/ui/f/d;->a:Lcom/instagram/ui/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/ui/f/d;->a:Lcom/instagram/ui/f/b;

    invoke-static {v0}, Lcom/instagram/ui/f/b;->a(Lcom/instagram/ui/f/b;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 102
    return-void
.end method
