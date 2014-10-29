.class final Lcom/facebook/widget/i;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/h;


# direct methods
.method constructor <init>(Lcom/facebook/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V

    .line 184
    return-void
.end method
