.class public final Lcom/instagram/ui/menu/f;
.super Ljava/lang/Object;
.source "MenuItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/instagram/ui/menu/f;->a:I

    .line 15
    iput-object p2, p0, Lcom/instagram/ui/menu/f;->c:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/ui/menu/f;->b:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/ui/menu/f;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/ui/menu/f;->a:I

    return v0
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/ui/menu/f;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
