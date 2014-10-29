.class final Lcom/instagram/ui/widget/a/c;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/ui/widget/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->a(Lcom/instagram/ui/widget/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->a(Lcom/instagram/ui/widget/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method
