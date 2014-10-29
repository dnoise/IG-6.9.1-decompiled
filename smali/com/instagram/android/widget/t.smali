.class final Lcom/instagram/android/widget/t;
.super Ljava/lang/Object;
.source "ShareTable.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/s;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/s;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;

    invoke-static {v0}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/android/widget/s;)Lcom/instagram/android/widget/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;

    invoke-static {v0}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/android/widget/s;)Lcom/instagram/android/widget/v;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    invoke-interface {v1, v0}, Lcom/instagram/android/widget/v;->a(Lcom/instagram/android/widget/x;)V

    .line 36
    :cond_0
    return-void
.end method
