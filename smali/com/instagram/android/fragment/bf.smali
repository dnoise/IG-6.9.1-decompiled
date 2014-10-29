.class final Lcom/instagram/android/fragment/bf;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bc;

    invoke-static {v0}, Lcom/instagram/android/fragment/bc;->b(Lcom/instagram/android/fragment/bc;)V

    .line 107
    return-void
.end method
