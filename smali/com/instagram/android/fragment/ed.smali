.class final Lcom/instagram/android/fragment/ed;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ea;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->b()I

    move-result v0

    sget v1, Lcom/instagram/android/fragment/ef;->a:I

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/ea;

    invoke-static {v0}, Lcom/instagram/android/fragment/ea;->d(Lcom/instagram/android/fragment/ea;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/ea;

    invoke-static {v0}, Lcom/instagram/android/fragment/ea;->b(Lcom/instagram/android/fragment/ea;)Lcom/instagram/android/fragment/y;

    move-result-object v0

    sget v1, Lcom/instagram/android/fragment/ef;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V

    goto :goto_0
.end method
