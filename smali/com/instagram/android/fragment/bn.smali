.class final Lcom/instagram/android/fragment/bn;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bi;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/instagram/android/fragment/bn;->a:Lcom/instagram/android/fragment/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/bn;->a:Lcom/instagram/android/fragment/bi;

    invoke-static {v0}, Lcom/instagram/android/fragment/bi;->b(Lcom/instagram/android/fragment/bi;)V

    .line 185
    return-void
.end method
