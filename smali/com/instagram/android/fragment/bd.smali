.class final Lcom/instagram/android/fragment/bd;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/fragment/bd;->a:Lcom/instagram/android/fragment/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/instagram/android/widget/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/bd;->a:Lcom/instagram/android/fragment/bc;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/bc;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/bd;->a:Lcom/instagram/android/fragment/bc;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/bd;->a:Lcom/instagram/android/fragment/bc;

    sget v2, Lcom/facebook/az;->find_friends_item_from_my_contact_list:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/bc;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/a;->a(Ljava/lang/String;)Lcom/instagram/android/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/a;->a()Lcom/instagram/android/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V

    .line 43
    return-void
.end method
