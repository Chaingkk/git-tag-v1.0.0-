# -*- mode: python ; coding: utf-8 -*-

import os

datas = []
csv_path = os.path.join(os.path.abspath('.'), 'igu17_points.csv')
if os.path.exists(csv_path):
    datas.append(('igu17_points.csv', '.'))

a = Analysis(
    ['modbus_igu17_debugger.py'],
    pathex=[],
    binaries=[],
    datas=datas,
    hiddenimports=['serial.tools.list_ports'],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
)

pyz = PYZ(a.pure, a.zipped_data)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='IGU17Debugger',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=False,
    console=True,
)

coll = COLLECT(
    exe,
    a.binaries,
    a.zipfiles,
    a.datas,
    strip=False,
    upx=False,
    upx_exclude=[],
    name='IGU17Debugger',
)
