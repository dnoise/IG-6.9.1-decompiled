.class public final Lcom/instagram/ui/menu/aa;
.super Ljava/lang/Object;
.source "SwitchItem.java"


# instance fields
.field private final a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:I


# direct methods
.method public constructor <init>(IZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/instagram/ui/menu/aa;->d:I

    .line 23
    iput-boolean p2, p0, Lcom/instagram/ui/menu/aa;->b:Z

    .line 24
    iput-object p3, p0, Lcom/instagram/ui/menu/aa;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/instagram/ui/menu/aa;->d:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/ui/menu/aa;->b:Z

    .line 51
    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/ui/menu/aa;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/instagram/ui/menu/aa;->b:Z

    return v0
.end method

.method public final d()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/ui/menu/aa;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method
